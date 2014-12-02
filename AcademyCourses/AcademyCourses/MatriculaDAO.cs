using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AcademyCourses
{
    public class MatriculaDAO
    {
        // MÉTODO PARA MATRICULAR A UN CURSO LIBRE
        public static int MatricularCurso(MatriculaCursoBE objMatriculaCurso)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_MatricularCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Alumno", SqlDbType.Int).Value = objMatriculaCurso.C_Alumno;
                comm.Parameters.Add("@C_Curso", SqlDbType.Int).Value = objMatriculaCurso.C_Curso;
                comm.Parameters.Add("@C_Recibo", SqlDbType.Int).Value = objMatriculaCurso.Recibo;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }

            return respuesta;
        }




        // MÉTODO PARA MATRICULAR A UN MÓDULO
        public static int MatricularModulo(MatriculaModuloBE objMatriculaModulo)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_MatricularModulo", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Alumno", SqlDbType.Int).Value = objMatriculaModulo.C_Alumno;
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objMatriculaModulo.C_Modulo;
                comm.Parameters.Add("@C_Recibo", SqlDbType.Int).Value = objMatriculaModulo.Recibo;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }

            return respuesta;
        }




        // MÉTODO PARA OBTENER CÓDIGO DEL ALUMNO
        public static int ObtenerCodigo(string nick)
        {
            int codigo;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ObtenerCodigoAlumno", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@Nick", SqlDbType.VarChar).Value = nick;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                codigo = (int)comm.Parameters["@valorReturn"].Value;
            }

            return codigo;
        }




        // MÉTODO PARA VALIDAR EL CURSO PREREQUISITO
        public static int ValidarCursoRequisito(MatriculaCursoBE objMatriculaCurso)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ValidarCursoRequisito", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Alumno", SqlDbType.Int).Value = objMatriculaCurso.C_Alumno;
                comm.Parameters.Add("@C_Curso", SqlDbType.Int).Value = objMatriculaCurso.C_Curso;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }

            return respuesta;
        }

    }
}