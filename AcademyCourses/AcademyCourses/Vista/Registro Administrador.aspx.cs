using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AcademyCourses.Vista
{
    public partial class Registro_Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //PROGRAMAR EVENTO REGISTRAR ADMINISTRADOR
        protected void Button1_Click(object sender, EventArgs e)
        {
            UsuarioBE objUsuario = new UsuarioBE();
            AdministradorBE objAdministrador = new AdministradorBE();

            objUsuario.Nombre = TextBox1.Text;
            objUsuario.ApellidoP = TextBox2.Text;
            objUsuario.ApellidoM = TextBox3.Text;

            if (DropDownList1.SelectedIndex == 0)
            {
                objUsuario.Sexo = "F";
            }
            else { objUsuario.Sexo = "M"; }

            objAdministrador.C_Trabajador = Convert.ToInt32(TextBox4.Text);
            objUsuario.Email = TextBox50.Text;
            objUsuario.Nick = TextBox5.Text;
            objUsuario.Contrasena = TextBox6.Text;
            objUsuario.Contrasena = TextBox7.Text;

            int retorno = UsuarioDAO.AgregarAdministrador(objUsuario, objAdministrador);

            if (retorno > 0)
            {

                ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "alertaRegistroAdmin();", true);
                //Server.Transfer("Index Administrador.aspx");

            }

        }
    }
}