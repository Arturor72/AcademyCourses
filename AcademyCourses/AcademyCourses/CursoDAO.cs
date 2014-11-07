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
                    ModuloBE objModulo = new ModuloBE();
                    CategoriaBE objCategoria = new CategoriaBE();
                    ProfesorBE objProfesor = new ProfesorBE();
                    HorarioBE objHorario = new HorarioBE();

                    objCurso.C_Curso = sdr.GetInt32(0);

                    SqlCommand comm2 = new SqlCommand("usp_BuscarModuloPorCodigo", Conn);
                    comm2.CommandType = CommandType.StoredProcedure;
                    comm2.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objCurso.C_Modulo;
                    SqlDataReader sdr2 = comm2.ExecuteReader();
                    
                    // En este IF lleno el objeto de ModuloBE
                    if(sdr2.Read())
                    {
                        objModulo.C_Modulo = sdr2.GetInt32(0);

                        SqlCommand comm3 = new SqlCommand("usp_BuscarCategoriaPorCodigo", Conn);
                        comm3.CommandType = CommandType.StoredProcedure;
                        comm3.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = objCurso.C_Categoria;
                        SqlDataReader sdr3 = comm3.ExecuteReader();
                        
                        // En este IF lleno el objeto de CategoriaBE
                        if(sdr3.Read())
                        {
                            objCategoria.C_Categoria = sdr3.GetInt32(0);
                            objCategoria.Descripcion = sdr3.GetString(1);
                        }

                        objModulo.C_Categoria = objCategoria;
                        objModulo.Precio = sdr3.GetDouble(2);
                        objModulo.Descripcion = sdr3.GetString(3);
                        objModulo.Estado = sdr3.GetBoolean(4);
                    }

                    objCurso.C_Modulo = objModulo;          // Asigno el objModulo
                    objCurso.C_Categoria = objCategoria;    // Asigno el objCategoría

                    SqlCommand comm4 = new SqlCommand("usp_BuscarProfesorPorCodigo", Conn);
                    comm4.CommandType = CommandType.StoredProcedure;
                    comm4.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.C_Profesor;
                    SqlDataReader sdr4 = comm4.ExecuteReader();
                    
                    // En este IF llenamos el objeto de ProfesorBE
                    if(sdr4.Read())
                    {
                        objProfesor.C_Profesor = sdr4.GetInt32(0);
                        objProfesor.C_Trabajador = sdr4.GetInt32(1);
                        objProfesor.ApellidoP = sdr4.GetString(2);
                        objProfesor.ApellidoM = sdr4.GetString(3);
                        objProfesor.Nombre = sdr4.GetString(4);
                        objProfesor.Telefono = sdr4.GetString(5);
                        objProfesor.Email = sdr4.GetString(6);
                        objProfesor.Estado = sdr4.GetBoolean(7);
                    }

                    objCurso.C_Profesor = objProfesor;  // Asigno el objProfesor


                    SqlCommand comm5 = new SqlCommand("usp_BuscarProfesorPorCodigo", Conn);
                    comm5.CommandType = CommandType.StoredProcedure;
                    comm5.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.C_Profesor;
                    SqlDataReader sdr5 = comm5.ExecuteReader();

                    if(sdr5.Read())
                    {
                        objHorario.C_Horario = sdr5.GetInt32(0);
                        objHorario.Dias = sdr5.GetString(1);
                        objHorario.HoraInicio = sdr5.GetDateTime(2);
                        objHorario.HoraFin = sdr5.GetDateTime(3);
                    }


                    objCurso.C_Horario = objHorario;        // Asigno el objHorario
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