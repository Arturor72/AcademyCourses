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
            string nick = (string)(Session["Nick"]);
            lblBienvenida.Text = nick;
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

            //if (retorno > 0)
            //{

            //    //ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "alertaRegistroAdmin();", true);
            //    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje1", "Alert.render('Administrador registrado correctamente.')", true);
            //    //Server.Transfer("Index Administrador.aspx");

            //}

            switch (retorno)
            {
                case 0:
                    //Response.Write("<script>window.alert('Se registro el curso');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Administrador registrado correctamente.')", true);

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox50.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    break;

                case 1:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar nombre de usuario')", true);

                    break;

                case 2:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar apellido paterno de usuario')", true);
                    break;

                case 3:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar apellido materno de usuario')", true);
                    break;

                case 4:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar codigo de trabajador')", true);
                    break;

                case 5:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar correo de usuario')", true);
                    break;

                case 6:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar nick usuario')", true);
                    break;

                case 7:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar contraseña')", true);
                    break;

                case 8:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Debe ingresar contraseña de confirmacion')", true);
                    break;

                case 9:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('El Email ya existe')", true);
                    break;

                case 10:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('El Nick ya existe')", true);
                    break;

                case 11:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('El codigo de trabajador ya existe')", true);
                    break;

                case 12:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Las contrasenas no coinciden')", true);
                     break;

                case 13:
                     ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Error al insertar Administrador')", true);
                    break;

               
            }

        }
    }
}