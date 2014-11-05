using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AcademyCourses
{
    public class LoginDAO
    {
        public static int ValidarLogin(UsuarioBE objUsuario)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ValidarLogin", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = objUsuario.Nick;
                comm.Parameters.Add("@Password", SqlDbType.VarChar).Value = objUsuario.Contrasena;

                //Capturamos los valores RETURN del STORE PROCEDURE
                SqlParameter valorReturn = new SqlParameter();
                valorReturn.DbType = DbType.Int32;
                valorReturn.Direction = ParameterDirection.ReturnValue;
                comm.Parameters.Add(valorReturn);
                respuesta = Convert.ToInt32(comm.ExecuteScalar());
                Console.WriteLine(Convert.ToString(respuesta));
            }

            return respuesta;
            
        }
    }
}