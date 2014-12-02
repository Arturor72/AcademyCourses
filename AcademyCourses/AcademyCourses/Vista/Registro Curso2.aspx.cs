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

        }

        protected void ddlCursoModulo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}