using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AcademyCourses
{
    public partial class IndexAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nick = (string)(Session["Nick"]);
            lblBienvenida.Text = nick;
        }

        protected void gvCursos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }
    }
}