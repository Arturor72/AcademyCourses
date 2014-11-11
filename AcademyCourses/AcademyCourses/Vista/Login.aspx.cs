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

                objMatriculaCurso.C_Curso = new CursoBE();

                objMatriculaCurso.C_Curso.C_Curso = Convert.ToInt32(TextBox10.Text);
                objMatriculaCurso.Recibo = TextBox11.Text;

                int retorno = UsuarioDAO.AgregarUsuario(objUsuario, objAlumno, objMatriculaCurso);

                if (retorno > 0)
                {
                    txtUsuario.Text = "Registrado en CURSO!!!";

                }

            }

            if (DropDownList3.SelectedIndex == 1)
            {


                objMatriculaModulo.C_Modulo = new ModuloBE();

                objMatriculaModulo.C_Modulo.C_Modulo = Convert.ToInt32(TextBox10.Text);
                objMatriculaModulo.Recibo = TextBox11.Text;

                int retorno = UsuarioDAO.AgregarAlumnoModulo(objUsuario, objAlumno, objMatriculaModulo);

                if (retorno > 0)
                {
                    txtUsuario.Text = "Registrado en MODULO!!!";

                }


            }
        }



    }
}