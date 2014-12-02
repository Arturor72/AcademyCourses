using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AcademyCourses.Vista
{
    public partial class Registro_Curso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nick = (string)(Session["Nick"]);
            lblBienvenida.Text = nick;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            CursoBE objCurso = new CursoBE();

            objCurso.Modulo = CursoDAO.buscarModulo(ddlModulo.SelectedIndex+1);
            objCurso.Categoria = CursoDAO.buscarCategoria(ddlCategoria.SelectedIndex+1);
            objCurso.Profesor = CursoDAO.buscarProfesor(ddlProfesor.SelectedIndex+1);
            objCurso.Horario = CursoDAO.buscarHorario(ddlHorario.SelectedIndex+1);
            objCurso.C_CursoR = Convert.ToInt32(txtCursoR.Text);                      
            objCurso.Descripcion = txtNombre.Text;
            objCurso.Requisitos = txtRequisitos.Text;
            objCurso.Objetivo = txtObjetivo.Text;             
            objCurso.Temario = txtTemario.Text;
            objCurso.Precio = Convert.ToInt32(txtPrecio.Text);
            objCurso.NumeroHoras = Convert.ToInt32(txtHoras.Text);
            objCurso.FechaInicio = Convert.ToDateTime(txtFechaInicio.Text);
            objCurso.FechaFin = Convert.ToDateTime(txtFechaFin.Text);

            int retorno = CursoDAO.AgregarCurso(objCurso);

            switch (retorno)
            {
                case 0:
                    //Response.Write("<script>window.alert('Se registro el curso');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Se registro curso')", true);

                    txtNombre.Text = "";
                    txtCursoR.Text = "";
                    txtHoras.Text = "";
                    txtPrecio.Text = "";
                    txtRequisitos.Text = "";
                    txtObjetivo.Text = "";
                    txtTemario.Text = "";
                    txtFechaInicio.Text = "";
                    txtFechaFin.Text = "";
                    break;

                case 1:
                    Response.Write("<script>window.alert('Ingresar codigo de modulo');</script>");
                    break;

                case 2:
                    Response.Write("<script>window.alert('Ingresar codigo de categoria');</script>");
                    break;

                case 3:
                    Response.Write("<script>window.alert('Ingresar codigo de profesor');</script>");
                    break;

                case 4:
                    Response.Write("<script>window.alert('Ingresar codigo de horario');</script>");
                    break;

                case 5:
                    Response.Write("<script>window.alert('Ingresar nombre de curso');</script>");
                    break;

                case 6:
                    Response.Write("<script>window.alert('Ingresar temario');</script>");
                    break;

                case 7:
                    Response.Write("<script>window.alert('Ingresar precio');</script>");
                    break;

                case 8:
                    Response.Write("<script>window.alert('Ingresar numero de horas');</script>");
                    break;

                case 9:
                    Response.Write("<script>window.alert('Ingresar fecha de inicio');</script>");
                    break;

                case 10:
                    Response.Write("<script>window.alert('Ingresar fecha de fin');</script>");
                    break;

                case 11:
                    Response.Write("<script>window.alert('Codigo de modulo no existe');</script>");
                    Response.Write("<script>window.alert(objModulo.C_Modulo);</script>");
                    break;

                case 12:
                    Response.Write("<script>window.alert('Codigo de categoria no existe');</script>");
                    break;

                case 13:
                    Response.Write("<script>window.alert('Codigo de profesor no existe');</script>");
                    break;

                case 14:
                    Response.Write("<script>window.alert('Codigo de horario no existe');</script>");
                    break;

                case 15:
                    //Response.Write("<script>window.alert('Codigo de curso requerido no existe');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Codigo de curso requerido no existe')", true);
                    break;
                ////////////////////////////////////////
                case 16:
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Nombre de curso ya existe.')", true);
                    break;

                case 17:
                    //Response.Write("<script>window.alert('Precio no puede ser menor que cero');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Precio no puede ser menor que cero.')", true);
                    break;

                case 18:
                    //    Response.Write("<script>window.alert('Numero de horas no puede ser menor que cero');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Numero de horas no puede ser menor que cero.')", true);
                    break;

                case 19:
                    //Response.Write("<script>window.alert('Fecha de inicio no puede ser posterior a la de fin');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Fecha de inicio no puede ser posterior a la de fin.')", true);
                    break;

                case 20:
                    //Response.Write("<script>window.alert('Fecha de inicio no puede ser igual a fecha de fin');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Fecha de inicio no puede ser igual a fecha de fin.')", true);
                    break;

                case 21:
                    //Response.Write("<script>window.alert('Error al agregar curso');</script>");
                    ClientScript.RegisterStartupScript(GetType(), "Mostrar_Mensaje3", "Alert.render('Error al agregar curso.')", true);

                    break;
            }

        }

}
}