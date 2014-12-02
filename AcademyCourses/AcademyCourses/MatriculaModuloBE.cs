using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class MatriculaModuloBE
    {

        public int C_MatriculaModulo { get; set; }
        public int C_Alumno { get; set; }
        public int C_Modulo { get; set; }
        public int C_Categoria { get; set; }
        public String Recibo { get; set; }
        public DateTime Matricula { get; set; }

        public MatriculaModuloBE() { }

        public MatriculaModuloBE(int C_MatriculaModulo, int C_Alumno, int C_Modulo, int C_Categoria,
                                   String Recibo, DateTime Matricula)
        {

            this.C_MatriculaModulo = C_MatriculaModulo;
            this.C_Alumno = C_Alumno;
            this.C_Modulo = C_Modulo;
            this.C_Categoria = C_Categoria;
            this.Recibo = Recibo;
            this.Matricula = Matricula;

        }

    }
}