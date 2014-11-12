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
            List<int> listaModulo = new List<int>();
            List<int> listaCategoria = new List<int>();
            List<int> listaProfesor = new List<int>();
            List<int> listaHorario = new List<int>();

            ModuloBE objModulo = new ModuloBE();
            CategoriaBE objCategoria = new CategoriaBE();
            ProfesorBE objProfesor = new ProfesorBE();
            HorarioBE objHorario = new HorarioBE();

            int cont = 0;

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ListarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = comm.ExecuteReader();

                while(sdr.Read())
                {
                    listaModulo.Add(sdr.GetInt32(1));
                    listaCategoria.Add(sdr.GetInt32(2));
                    listaProfesor.Add(sdr.GetInt32(3));
                    listaHorario.Add(sdr.GetInt32(4));

                    cont++;
                }

                sdr.Close();
                CursoBE[] objCurso = new CursoBE[cont];

                for (int i = 0; i < listaModulo.Count; i++)
                {
                    comm = new SqlCommand("usp_BuscarModuloPorCodigo", Conn);
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = listaModulo[i];
                    SqlDataReader sdr2 = comm.ExecuteReader();

                    if (sdr2.Read())
                    {
                        objModulo.C_Modulo = sdr2.GetInt32(0);
                        objModulo.Precio = sdr2.GetDecimal(2);
                        objModulo.Descripcion = sdr2.GetString(3);
                        objModulo.Estado = sdr2.GetBoolean(4);
                    }

                    objCurso[i].C_Modulo = objModulo;
                    sdr2.Close();
                }



                for (int i = 0; i < listaCategoria.Count; i++)
                {
                    comm = new SqlCommand("usp_BuscarCategoriaPorCodigo", Conn);
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = listaCategoria[i];
                    SqlDataReader sdr3 = comm.ExecuteReader();

                    if (sdr3.Read())
                    {
                        objCategoria.C_Categoria = sdr3.GetInt32(0);
                        objCategoria.Descripcion = sdr3.GetString(1);
                    }

                    objCurso[i].C_Categoria = objCategoria;
                    objModulo.C_Categoria = objCategoria;
                    sdr3.Close();
                }



                for (int i = 0; i < listaProfesor.Count; i++)
                {
                    comm = new SqlCommand("usp_BuscarProfesorPorCodigo", Conn);
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = listaProfesor[i];
                    SqlDataReader sdr4 = comm.ExecuteReader();

                    if (sdr4.Read())
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

                    objCurso[i].C_Profesor = objProfesor;
                    sdr4.Close();
                }



                for (int i = 0; i < listaHorario.Count; i++)
                {
                    comm = new SqlCommand("usp_BuscarHorarioPorCodigo", Conn);
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = listaHorario[i];
                    SqlDataReader sdr5 = comm.ExecuteReader();

                    if (sdr5.Read())
                    {
                        objHorario.C_Horario = sdr5.GetInt32(0);
                        objHorario.Dias = sdr5.GetString(1);
                        objHorario.HoraInicio = sdr5.GetTimeSpan(2);
                        objHorario.HoraFin = sdr5.GetTimeSpan(3);
                    }

                    objCurso[i].C_Horario = objHorario;
                    sdr5.Close();
                }


                comm = new SqlCommand("usp_ListarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr6 = comm.ExecuteReader();
                int x = 0;

                while(sdr6.Read())
                {
                    objCurso[x].C_Curso = sdr6.GetInt32(0);
                    if (sdr6.IsDBNull(5))
                    {
                        objCurso[x].C_CursoR = 0;
                    }
                    else
                    {
                        objCurso[x].C_CursoR = sdr6.GetInt32(5);
                    }
                    objCurso[x].Descripcion = sdr6.GetString(6);
                    objCurso[x].Requisitos = sdr6.GetString(7);
                    objCurso[x].Objetivo = sdr6.GetString(8);
                    objCurso[x].Temario = sdr6.GetString(9);
                    objCurso[x].Precio = sdr6.GetDecimal(10);
                    objCurso[x].NumeroHoras = sdr6.GetInt32(11);
                    objCurso[x].FechaInicio = sdr6.GetDateTime(12).Date;
                    objCurso[x].FechaFin = sdr6.GetDateTime(13).Date;
                    objCurso[x].Estado = sdr6.GetBoolean(14);

                    listaCurso.Add(objCurso[x]);
                    x++;
                }
              
                Conn.Close();
            }
            return listaCurso;
        }
    }
}