using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AcademyCourses
{
    public class CursoDAO
    {
        // MÉTODO PARA AGREGAR CURSO
        public static int AgregarCurso(CursoBE objCurso)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_AgregarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objCurso.C_Modulo;
                comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = objCurso.C_Categoria;
                comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.C_Profesor;
                comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = objCurso.C_Horario;
                comm.Parameters.Add("@C_CursoR", SqlDbType.Int).Value = objCurso.C_CursoR;
                comm.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = objCurso.Descripcion;
                comm.Parameters.Add("@Requisitos", SqlDbType.VarChar).Value = objCurso.Requisitos;
                comm.Parameters.Add("@Objetivo", SqlDbType.VarChar).Value = objCurso.Objetivo;
                comm.Parameters.Add("@Temario", SqlDbType.Text).Value = objCurso.Temario;
                comm.Parameters.Add("@Precio", SqlDbType.Decimal).Value = objCurso.Precio;
                comm.Parameters.Add("@NumeroHoras", SqlDbType.Int).Value = objCurso.NumeroHoras;
                comm.Parameters.Add("@FechaInicio", SqlDbType.Date).Value = objCurso.FechaInicio;
                comm.Parameters.Add("@FechaFin", SqlDbType.Date).Value = objCurso.FechaFin;
                comm.Parameters.Add("@Estado", SqlDbType.Bit).Value = objCurso.Estado;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }
            return respuesta;
        }




        // MÉTODO PARA MODIFICAR CURSO
        public static int ModificarCurso(CursoBE objCurso)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ModificarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Curso", SqlDbType.Int).Value = objCurso.C_Curso;
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objCurso.C_Modulo;
                comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = objCurso.C_Categoria;
                comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.C_Profesor;
                comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = objCurso.C_Horario;
                comm.Parameters.Add("@C_CursoR", SqlDbType.Int).Value = objCurso.C_CursoR;
                comm.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = objCurso.Descripcion;
                comm.Parameters.Add("@Requisitos", SqlDbType.VarChar).Value = objCurso.Requisitos;
                comm.Parameters.Add("@Objetivo", SqlDbType.VarChar).Value = objCurso.Objetivo;
                comm.Parameters.Add("@Temario", SqlDbType.Text).Value = objCurso.Temario;
                comm.Parameters.Add("@Precio", SqlDbType.Decimal).Value = objCurso.Precio;
                comm.Parameters.Add("@NumeroHoras", SqlDbType.Int).Value = objCurso.NumeroHoras;
                comm.Parameters.Add("@FechaInicio", SqlDbType.Date).Value = objCurso.FechaInicio;
                comm.Parameters.Add("@FechaFin", SqlDbType.Date).Value = objCurso.FechaFin;
                comm.Parameters.Add("@Estado", SqlDbType.Bit).Value = objCurso.Estado;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }
            return respuesta;
        }




        // MÉTODO PARA ELIMINAR CURSO
        public static int EliminarCurso(CursoBE objCurso)
        {
            int respuesta;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_EliminarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Curso", SqlDbType.Int).Value = objCurso.C_Curso;

                // Obtenemos valor del RETURN
                comm.Parameters.Add("@valorReturn", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                comm.ExecuteNonQuery();
                respuesta = (int)comm.Parameters["@valorReturn"].Value;
            }
            return respuesta;
        }





        // MÉTODO PARA LISTAR CURSO
        public static List<CursoBE> ListarCurso()
        {
            List<CursoBE> listaCurso = new List<CursoBE>();

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ListarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = comm.ExecuteReader();

                while(sdr.Read())
                {
                    CursoBE objCurso = new CursoBE();

                    objCurso.C_Curso = sdr.GetInt32(0);
                    objCurso.C_Modulo.C_Modulo = sdr.GetInt32(1);
                    objCurso.C_Categoria.C_Categoria = sdr.GetInt32(2);
                    objCurso.C_Profesor.C_Profesor = sdr.GetInt32(3);
                    objCurso.C_Horario.C_Horario = sdr.GetInt32(4);
                    objCurso.C_CursoR = sdr.GetInt32(5);
                    objCurso.Descripcion = sdr.GetString(6);
                    objCurso.Requisitos = sdr.GetString(7);
                    objCurso.Objetivo = sdr.GetString(8);
                    objCurso.Temario = sdr.GetString(9);
                    objCurso.Precio = sdr.GetDouble(10);
                    objCurso.NumeroHoras = sdr.GetInt32(11);
                    objCurso.FechaInicio = sdr.GetDateTime(12);
                    objCurso.FechaFin = sdr.GetDateTime(13);
                    objCurso.Estado = sdr.GetBoolean(14);

                    listaCurso.Add(objCurso);
                }
                Conn.Close();
            }
            return listaCurso;
        }
    }
}