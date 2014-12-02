using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AcademyCourses.Vista
{
    public partial class Registro_Curso2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nick = (string)(Session["Nick"]);
            lblBienvenida.Text = nick;            
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (ddlCursoModulo.SelectedIndex == 0)
            {
                MatriculaCursoBE objMatriculaCurso = new MatriculaCursoBE();

                objMatriculaCurso.C_Alumno = Convert.ToInt32(MatriculaDAO.ObtenerCodigo((string)(Session["Nick"])));
                objMatriculaCurso.C_Curso = Convert.ToInt32(txtCodigo.Text);
                objMatriculaCurso.Recibo = txtRecibo.Text;

                int retorno = MatriculaDAO.ValidarCursoRequisito(objMatriculaCurso);

                switch (retorno)
                {
                    case 3:
                        Response.Write("<script>window.alert('No puede matricularse. Debe llevar el curso prerequisito');</script>");
                        break;

                    case 4:
                        Response.Write("<script>window.alert('El curso no pertenece al modulo matriculado');</script>");
                        break;

                    case 5:
                        Response.Write("<script>window.alert('El alumno no esta matriculado en ningun modulo');</script>");
                        break;

                    default:
                        int valor = MatriculaDAO.MatricularCurso(objMatriculaCurso);
                        switch (valor)
                        {
                            case 0:
                                Response.Write("<script>window.alert('Se matriculo al curso');</script>");
                                txtCodigo.Text = "";
                                txtRecibo.Text = "";
                                break;

                            case 1:
                                Response.Write("<script>window.alert('Ingresar codigo de curso');</script>");
                                break;

                            case 2:
                                Response.Write("<script>window.alert('Ingresar codigo de recibo');</script>");
                                break;

                            case 3:
                                Response.Write("<script>window.alert('El codigo de curso no existe');</script>");
                                break;

                            case 4:
                                Response.Write("<script>window.alert('Error al insertar los datos');</script>");
                                break;
                        }
                        break;
                }
            }
            else
            {
                MatriculaModuloBE objMatriculaModulo = new MatriculaModuloBE();

                objMatriculaModulo.C_Alumno = Convert.ToInt32(MatriculaDAO.ObtenerCodigo((string)(Session["Nick"])));
                objMatriculaModulo.C_Modulo = Convert.ToInt32(txtCodigo.Text);
                objMatriculaModulo.Recibo = txtRecibo.Text;

                int retorno = MatriculaDAO.MatricularModulo(objMatriculaModulo);

                switch (retorno)
                {
                    case 0:
                        Response.Write("<script>window.alert('Se matriculó al modulo');</script>");
                        txtCodigo.Text = "";
                        txtRecibo.Text = "";
                        break;

                    case 1:
                        Response.Write("<script>window.alert('Ingresar codigo de modulo');</script>");
                        break;

                    case 2:
                        Response.Write("<script>window.alert('Ingresar codigo de recibo');</script>");
                        break;

                    case 3:
                        Response.Write("<script>window.alert('El codigo de modulo no existe');</script>");
                        break;

                    case 4:
                        Response.Write("<script>window.alert('Error al insertar los datos');</script>");
                        break;

                    case 5:
                        Response.Write("<script>window.alert('Error al inseratar los datos');</script>");
                        break;
                }
            }
        }

        protected void ddlCursoModulo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}