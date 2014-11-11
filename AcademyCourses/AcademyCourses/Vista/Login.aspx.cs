using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AcademyCourses.Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            UsuarioBE objUsuario = new UsuarioBE();
            objUsuario.Nick = txtUsuario.Text;
            objUsuario.Contrasena = txtContrasena.Text;

            int retorno = LoginDAO.ValidarLogin(objUsuario);

            switch (retorno)
            {
                case 0:
                    lblResultado.Text = "Usuario valido";
                    int rpta = LoginDAO.AlumnoAdministrador(objUsuario);
                    if (rpta == 1)
                    {
                        Server.Transfer("indexalumno.aspx");
                    }
                    else
                    {
                        Server.Transfer("Index Administrador.aspx");
                    }
                    break;

                case 1:
                    lblResultado.Text = "Debe ingresar su nombre de usuario";
                    txtUsuario.Text = "";
                    break;

                case 2:
                    lblResultado.Text = "Debe ingresar su contraseña";
                    txtUsuario.Text = "";
                    break;

                case 3:
                    lblResultado.Text = "Usuario no existe";
                    txtUsuario.Text = "";
                    break;
            }
        }
    }
}