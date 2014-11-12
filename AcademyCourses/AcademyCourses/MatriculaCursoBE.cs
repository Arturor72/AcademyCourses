using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class MatriculaCursoBE
    {

        public int C_MatriculaCurso { get; set; }
        public AlumnoBE C_Alumno { get; set; }
        public CursoBE C_Curso { get; set; }
        public String Recibo { get; set; }
        public DateTime Matricula { get; set; }

        public MatriculaCursoBE() { }

        public MatriculaCursoBE(int C_MatriculaCurso,  AlumnoBE C_Alumno, CursoBE C_Curso, String Recibo,
                               DateTime Matricula ) {

            this.C_MatriculaCurso = C_MatriculaCurso;
            this.C_Alumno = C_Alumno;
            this.C_Curso = C_Curso;
            this.Recibo = Recibo;
            this.Matricula = Matricula;
        
        }



    }
}