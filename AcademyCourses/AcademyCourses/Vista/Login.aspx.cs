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

                    int codigo = LoginDAO.ObtenerCodigo(objUsuario);

                    Session.Add("Codigo", codigo);
                    Session.Add("Nick", objUsuario.Nick);

                    int rpta = LoginDAO.AlumnoAdministrador(objUsuario);
                    if (rpta == 1)
                    {
                        Server.Transfer("indexAlumno.aspx");
                    }
                    else
                    {
                        Server.Transfer("IndexAdministrador.aspx");
                    }
                    break;

                case 1:
                    lblResultado.Text = "Debe ingresar su nombre de usuario";
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje2", "Alert.render('Debe ingresar su nombre de usuario.')", true);
                    txtUsuario.Text = "";
                    break;

                case 2:
                    lblResultado.Text = "Debe ingresar su contraseña";
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje2", "Alert.render('Debe ingresar contraseña.')", true);
                    txtUsuario.Text = "";
                    break;

                case 3:
                    lblResultado.Text = "Usuario no existe";
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje2", "Alert.render('Usuario no existe.')", true);
                    txtUsuario.Text = "";
                    txtContrasena.Text = "";
                    break;
            }
        }

        ///////////////////**********************************  LOGIN - ASPX


        protected void Button3_Click(object sender, EventArgs e)
        {
            UsuarioBE objUsuario = new UsuarioBE();
            AlumnoBE objAlumno = new AlumnoBE();
            MatriculaCursoBE objMatriculaCurso = new MatriculaCursoBE();
            MatriculaModuloBE objMatriculaModulo = new MatriculaModuloBE();

            objUsuario.Nombre = TextBox4.Text;
            objUsuario.ApellidoP = TextBox5.Text;
            objUsuario.ApellidoM = TextBox6.Text;

            if (DropDownList1.SelectedIndex == 0)
            {
                objUsuario.Sexo = "F";
            }
            else { objUsuario.Sexo = "M"; }

            if (DropDownList2.SelectedIndex == 0)
            {
                objAlumno.Ocupacion = "Estudiante";
            }
            if (DropDownList2.SelectedIndex == 1)
            {
                objAlumno.Ocupacion = "Ingeniero";
            }
            if (DropDownList2.SelectedIndex == 2)
            {
                objAlumno.Ocupacion = "Profesor";
            }
            if (DropDownList2.SelectedIndex == 3)
            {
                objAlumno.Ocupacion = "Diseñador";
            }
            if (DropDownList2.SelectedIndex == 4)
            {
                objAlumno.Ocupacion = "Otro";
            }

            objUsuario.Email = TextBox12.Text;
            objUsuario.Nick = TextBox7.Text;
            objUsuario.Contrasena = TextBox8.Text;
            objUsuario.Contrasena = TextBox9.Text;

            if (DropDownList3.SelectedIndex == 0)
            {


                objMatriculaCurso.C_Curso = Convert.ToInt32(TextBox10.Text);
                objMatriculaCurso.Recibo = TextBox11.Text;

                int retorno = UsuarioDAO.AgregarAlumnoCurso(objUsuario, objAlumno, objMatriculaCurso);

                if (retorno > 0)
                {
                    //ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje1", "alertaRegistroCurso();", true);
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje1", "Alert.render('Registrado en curso satisfactoriamente.')", true);

                }

            }

            if (DropDownList3.SelectedIndex == 1)
            {


                objMatriculaModulo.C_Modulo = Convert.ToInt32(TextBox10.Text);
                objMatriculaModulo.Recibo = TextBox11.Text;

                int retorno = UsuarioDAO.AgregarAlumnoModulo(objUsuario, objAlumno, objMatriculaModulo);

                if (retorno > 0)
                {
                    //ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje2", "alertaRegistroModulo();", true);
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje2", "Alert.render('Registrado en modulo satisfactoriamente.')", true);

                }


            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }



    }
}