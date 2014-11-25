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
                ModuloBE objModulo = new ModuloBE();
                CategoriaBE objCategoria = new CategoriaBE();
                HorarioBE objHorario = new HorarioBE();
                ProfesorBE objProfesor = new ProfesorBE();

                SqlCommand comm = new SqlCommand("usp_AgregarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objCurso.Modulo.C_Modulo;
                comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = objCurso.Categoria.C_Categoria;
                comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.Profesor.C_Profesor;
                comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = objCurso.Horario.C_Horario;
                comm.Parameters.Add("@C_CursoR", SqlDbType.Int).Value = objCurso.C_CursoR;
                comm.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = objCurso.Descripcion;
                comm.Parameters.Add("@Requisitos", SqlDbType.VarChar).Value = objCurso.Requisitos;
                comm.Parameters.Add("@Objetivo", SqlDbType.VarChar).Value = objCurso.Objetivo;
                comm.Parameters.Add("@Temario", SqlDbType.Text).Value = objCurso.Temario;
                comm.Parameters.Add("@Precio", SqlDbType.Decimal).Value = objCurso.Precio;
                comm.Parameters.Add("@NumeroHoras", SqlDbType.Int).Value = objCurso.NumeroHoras;
                comm.Parameters.Add("@FechaInicio", SqlDbType.Date).Value = objCurso.FechaInicio;
                comm.Parameters.Add("@FechaFin", SqlDbType.Date).Value = objCurso.FechaFin;

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
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = objCurso.Modulo.C_Modulo;
                comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = objCurso.Categoria.C_Categoria;
                comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = objCurso.Profesor.C_Profesor;
                comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = objCurso.Horario.C_Horario;
                comm.Parameters.Add("@C_CursoR", SqlDbType.Int).Value = objCurso.C_CursoR;
                comm.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = objCurso.Descripcion;
                comm.Parameters.Add("@Requisitos", SqlDbType.VarChar).Value = objCurso.Requisitos;
                comm.Parameters.Add("@Objetivo", SqlDbType.VarChar).Value = objCurso.Objetivo;
                comm.Parameters.Add("@Temario", SqlDbType.Text).Value = objCurso.Temario;
                comm.Parameters.Add("@Precio", SqlDbType.Decimal).Value = objCurso.Precio;
                comm.Parameters.Add("@NumeroHoras", SqlDbType.Int).Value = objCurso.NumeroHoras;
                comm.Parameters.Add("@FechaInicio", SqlDbType.Date).Value = objCurso.FechaInicio;
                comm.Parameters.Add("@FechaFin", SqlDbType.Date).Value = objCurso.FechaFin;
                comm.Parameters.Add("@Estado", SqlDbType.VarChar).Value = objCurso.Estado;

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
        public static DataTable ListarCurso()
        {
            List<CursoBE> listaCurso = new List<CursoBE>();
            List<int> listaModulo = new List<int>();
            List<int> listaCategoria = new List<int>();
            List<int> listaProfesor = new List<int>();
            List<int> listaHorario = new List<int>();

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[14]{
                                    new DataColumn("Codigo", typeof(int)),
                                    new DataColumn("Modulo", typeof(string)),
                                    new DataColumn("Categoria", typeof(string)),
                                    new DataColumn("Profesor", typeof(string)),
                                    new DataColumn("Curso requisito", typeof(int)),
                                    new DataColumn("Nombre", typeof(string)),
                                    new DataColumn("Requisitos", typeof(string)),
                                    new DataColumn("Objetivo", typeof(string)),
                                    new DataColumn("Temario", typeof(string)),
                                    new DataColumn("Precio", typeof(decimal)),
                                    new DataColumn("Numero de horas", typeof(int)),
                                    new DataColumn("Fecha de inicio", typeof(DateTime)),
                                    new DataColumn("Fecha de fin", typeof(DateTime)),
                                    new DataColumn("Estado", typeof(string))});



            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_ListarCurso", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = comm.ExecuteReader();

                while(sdr.Read())
                {
                    CursoBE objCurso = new CursoBE();
                    listaModulo.Add(sdr.GetInt32(1));
                    listaCategoria.Add(sdr.GetInt32(2));
                    listaProfesor.Add(sdr.GetInt32(3));
                    listaHorario.Add(sdr.GetInt32(4));

                    objCurso.C_Curso = sdr.GetInt32(0);
                    if(sdr.IsDBNull(5))
                    {
                        objCurso.C_CursoR = 0;
                    }
                    else
                    {
                        objCurso.C_CursoR = sdr.GetInt32(5);
                    }
                    objCurso.Descripcion = sdr.GetString(6);
                    objCurso.Requisitos = sdr.GetString(7);
                    objCurso.Objetivo = sdr.GetString(8);
                    objCurso.Temario = sdr.GetString(9);
                    objCurso.Precio = sdr.GetDecimal(10);
                    objCurso.NumeroHoras = sdr.GetInt32(11);
                    objCurso.FechaInicio = sdr.GetDateTime(12).Date;
                    objCurso.FechaFin = sdr.GetDateTime(13).Date;
                    objCurso.Estado = sdr.GetString(14);

                    listaCurso.Add(objCurso);
                }

                sdr.Close();
                

                for (int i = 0; i < listaModulo.Count; i++)
                {
                    listaCurso[i].Modulo = buscarModulo(listaModulo[i]);
                }



                for (int i = 0; i < listaCategoria.Count; i++)
                {
                    listaCurso[i].Categoria = buscarCategoria(listaCategoria[i]);
                }



                for (int i = 0; i < listaProfesor.Count; i++)
                {
                    listaCurso[i].Profesor = buscarProfesor(listaProfesor[i]);
                }



                for (int i = 0; i < listaHorario.Count; i++)
                {
                    listaCurso[i].Horario = buscarHorario(listaHorario[i]);
                }

                // Aquí llenaré el DataTable
                for (int i = 0; i < listaCurso.Count; i++)
                {
                    dt.Rows.Add(listaCurso[i].C_Curso,
                                listaCurso[i].Modulo.Descripcion,
                                listaCurso[i].Categoria.Descripcion,
                                listaCurso[i].Profesor.ApellidoP + " " + listaCurso[i].Profesor.ApellidoM + " " + listaCurso[i].Profesor.Nombre,
                                listaCurso[i].C_CursoR,
                                listaCurso[i].Descripcion,
                                listaCurso[i].Requisitos,
                                listaCurso[i].Objetivo,
                                listaCurso[i].Temario,
                                listaCurso[i].Precio,
                                listaCurso[i].NumeroHoras,
                                listaCurso[i].FechaInicio,
                                listaCurso[i].FechaFin,
                                listaCurso[i].Estado);
                }

                Conn.Close();
            }
            return dt;
        }




        public static ModuloBE buscarModulo(int C_Modulo)
        {
            ModuloBE objModulo = new ModuloBE();

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_BuscarModuloPorCodigo", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Modulo", SqlDbType.Int).Value = C_Modulo;
                SqlDataReader sdr = comm.ExecuteReader();

                if (sdr.Read())
                {
                    objModulo.C_Modulo = sdr.GetInt32(0);
                    objModulo.Precio = sdr.GetDecimal(2);
                    objModulo.Descripcion = sdr.GetString(3);
                    objModulo.Estado = sdr.GetString(4);
                }
            }
            
            return objModulo;
        }





        public static CategoriaBE buscarCategoria(int C_Categoria)
        {
            CategoriaBE objCategoria = new CategoriaBE();

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_BuscarCategoriaPorCodigo", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Categoria", SqlDbType.Int).Value = C_Categoria;
                SqlDataReader sdr = comm.ExecuteReader();

                if (sdr.Read())
                {
                    objCategoria.C_Categoria = sdr.GetInt32(0);
                    objCategoria.Descripcion = sdr.GetString(1);
                }
            }

            return objCategoria;
        }





        public static ProfesorBE buscarProfesor(int C_Profesor)
        {
            ProfesorBE objProfesor = new ProfesorBE();

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_BuscarProfesorPorCodigo", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Profesor", SqlDbType.Int).Value = C_Profesor;
                SqlDataReader sdr = comm.ExecuteReader();

                if (sdr.Read())
                {
                    objProfesor.C_Profesor = sdr.GetInt32(0);
                    objProfesor.C_Trabajador = sdr.GetInt32(1);
                    objProfesor.ApellidoP = sdr.GetString(2);
                    objProfesor.ApellidoM = sdr.GetString(3);
                    objProfesor.Nombre = sdr.GetString(4);
                    objProfesor.Telefono = sdr.GetString(5);
                    objProfesor.Email = sdr.GetString(6);
                    objProfesor.Estado = sdr.GetString(7);
                }
            }

            return objProfesor;
        }




        public static HorarioBE buscarHorario(int C_Horario)
        {
            HorarioBE objHorario = new HorarioBE();

            using (SqlConnection Conn = BDConexion.ObtenerConexion())
            {
                SqlCommand comm = new SqlCommand("usp_BuscarHorarioPorCodigo", Conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("@C_Horario", SqlDbType.Int).Value = C_Horario;
                SqlDataReader sdr = comm.ExecuteReader();

                if (sdr.Read())
                {
                    objHorario.C_Horario = sdr.GetInt32(0);
                    objHorario.Dias = sdr.GetString(1);
                    objHorario.HoraInicio = sdr.GetTimeSpan(2);
                    objHorario.HoraFin = sdr.GetTimeSpan(3);
                }
            }

            return objHorario;
        }
    }
}