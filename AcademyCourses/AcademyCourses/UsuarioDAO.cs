using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace AcademyCourses
{
    public class UsuarioDAO
    {

        public static int AgregarUsuario(UsuarioBE objUsuario)
        {
            int respuesta = 0;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_InsertarUsuario", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@ApellidoP", SqlDbType.VarChar).Value = objUsuario.ApellidoP;
                comm.Parameters.Add("@ApellidoM", SqlDbType.VarChar).Value = objUsuario.ApellidoM;
                comm.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = objUsuario.Nombre;
                comm.Parameters.Add("@Email", SqlDbType.VarChar).Value = objUsuario.Email;
                comm.Parameters.Add("@Sexo", SqlDbType.VarChar).Value = objUsuario.Sexo;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = objUsuario.Nick;
                comm.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = objUsuario.Contrasena;
                comm.Parameters.Add("@Estado", SqlDbType.Bit).Value = objUsuario.Estado;

                respuesta = comm.ExecuteNonQuery();
                Conn.Close();

            }

            return respuesta;
        }

        public static int ActualizarUsuario(UsuarioBE objUsuario)
        {
            int respuesta = 0;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {


                SqlCommand comm = new SqlCommand("usp_actualizarUsuario", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Usuario", SqlDbType.Int).Value = objUsuario.C_Usuario;
                comm.Parameters.Add("@ApellidoP", SqlDbType.VarChar).Value = objUsuario.ApellidoP;
                comm.Parameters.Add("@ApellidoM", SqlDbType.VarChar).Value = objUsuario.ApellidoM;
                comm.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = objUsuario.Nombre;
                comm.Parameters.Add("@Email", SqlDbType.VarChar).Value = objUsuario.Email;
                comm.Parameters.Add("@Sexo", SqlDbType.VarChar).Value = objUsuario.Sexo;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = objUsuario.Nick;
                comm.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = objUsuario.Contrasena;
                comm.Parameters.Add("@Estado", SqlDbType.Bit).Value = objUsuario.Estado;

                respuesta = comm.ExecuteNonQuery();
                Conn.Close();


            }

            return respuesta;
        }

        public static int EliminarUsuario(UsuarioBE objUsuario)
        {

            int respuesta = 0;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {


                SqlCommand comm = new SqlCommand("usp_EliminarUsuario", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Usuario", SqlDbType.Int).Value = objUsuario.C_Usuario;

                respuesta = comm.ExecuteNonQuery();
                Conn.Close();


            }

            return respuesta;

        }


        public static List<UsuarioBE> mostrarUsuarios()
        {
            List<UsuarioBE> lista = new List<UsuarioBE>();
            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_mostrarUsuarios", Conn);
                comm.CommandType = CommandType.StoredProcedure;

                SqlDataReader x = comm.ExecuteReader();

                while (x.Read())
                {

                    UsuarioBE objUsuarioBE = new UsuarioBE();

                    objUsuarioBE.C_Usuario = x.GetInt32(0);
                    objUsuarioBE.ApellidoP = x.GetString(1);
                    objUsuarioBE.ApellidoM = x.GetString(2);
                    objUsuarioBE.Nombre = x.GetString(3);
                    objUsuarioBE.Email = x.GetString(4);
                    objUsuarioBE.Sexo = x.GetString(5); 
                    objUsuarioBE.Nick = x.GetString(6);
                    objUsuarioBE.Contrasena = x.GetString(7);
                    objUsuarioBE.Estado = x.GetBoolean(8);

                    lista.Add(objUsuarioBE);

                }
                Conn.Close();
            }

            return lista;
        }




    }
}