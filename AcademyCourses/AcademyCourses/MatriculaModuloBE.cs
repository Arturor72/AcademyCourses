using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class MatriculaModuloBE
    {

        public int C_MatriculaModulo { get; set; }
        public AlumnoBE C_Alumno { get; set; }
        public ModuloBE C_Modulo { get; set; }
        public CategoriaBE C_Categoria { get; set; }
        public String Recibo { get; set; }
        public DateTime Matricula { get; set; }

        public MatriculaModuloBE() { }

        public MatriculaModuloBE(int C_MatriculaModulo, AlumnoBE C_Alumno, ModuloBE C_Modulo, CategoriaBE C_Categoria,
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