using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AcademyCourses
{
    public partial class frmListarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            gvCursos.DataSource = CursoDAO.ListarCurso();
            gvCursos.DataBind();
        }

        protected void gvCursos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}