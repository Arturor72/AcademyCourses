using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class CursoBE
    {

        public int C_Curso { get; set; }
        public ModuloBE Modulo { get; set; }
        public CategoriaBE Categoria { get; set; }
        public ProfesorBE Profesor { get; set; }
        public HorarioBE Horario { get; set; }
        public int C_CursoR { get; set; }
        public string Descripcion { get; set; }
        public string Requisitos { get; set; }
        public string Objetivo { get; set; }
        public string Temario { get; set; }
        public decimal Precio { get; set; }
        public int NumeroHoras { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public string Estado { get; set; }

        public CursoBE() { }

        public CursoBE(int C_Curso, ModuloBE C_Modulo, CategoriaBE C_Categoria, ProfesorBE C_Profesor,
                       HorarioBE C_Horario, int C_CursoR, string Descripcion, string Requisitos,
                       string Objetivo, string Temario, decimal Precio, int NumeroHoras, DateTime FechaInicio,
                        DateTime FechaFin, string Estado) {

                            this.C_Curso = C_Curso;
                            this.Modulo = C_Modulo;
                            this.Categoria = C_Categoria;
                            this.Horario = C_Horario;
                            this.C_CursoR = C_CursoR;
                            this.Descripcion = Descripcion;
                            this.Requisitos = Requisitos;
                            this.Objetivo = Objetivo;
                            this.Temario = Temario;
                            this.Precio = Precio;
                            this.NumeroHoras = NumeroHoras;
                            this.FechaInicio = FechaInicio;
                            this.FechaFin = FechaFin;
                            this.Estado = Estado;

                } 

    }
}