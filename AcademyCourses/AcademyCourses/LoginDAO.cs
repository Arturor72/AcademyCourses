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
                comm.Parameters.Add("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@RETURN_VALUE"].Value;
            }

            return respuesta;
            
        }



        public static int AlumnoAdministrador(UsuarioBE objUsuario)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_AlumnoAdministrador", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = objUsuario.Nick;
                comm.Parameters.Add("@Password", SqlDbType.VarChar).Value = objUsuario.Contrasena;

                //Capturamos los valores RETURN del STORE PROCEDURE
                comm.Parameters.Add("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@RETURN_VALUE"].Value;
            }

            return respuesta;

        }




        public static int ObtenerCodigo(UsuarioBE objUsuario)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ObtenerCodigoAlumno", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = objUsuario.Nick;

                //Capturamos los valores RETURN del STORE PROCEDURE
                comm.Parameters.Add("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@RETURN_VALUE"].Value;
            }

            return respuesta;

        }
    }
}