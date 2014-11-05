using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace AcademyCourses
{
    public class BDConexion
    {
        public static SqlConnection ObtenerConexion()
        {
            SqlConnection Conn = new SqlConnection("Integrated Security=true; Data Source=.; Initial Catalog=dbAcademy");
            Conn.Open();
            return Conn;
        }
    }
}