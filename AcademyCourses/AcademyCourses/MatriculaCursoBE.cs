using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class MatriculaCursoBE
    {

        public int MatriculaCurso { get; set; }
        public AlumnoBE C_Alumno { get; set; }
        public CursoBE C_Curso { get; set; }
        public String Recibo { get; set; }
        public DateTime Matricula { get; set; }

        public MatriculaCursoBE() { }

        public MatriculaCursoBE(int MatriculaCurso,  AlumnoBE C_Alumno, CursoBE C_Curso, String Recibo,
                               DateTime Matricula ) {

            this.MatriculaCurso = MatriculaCurso;
            this.C_Alumno = C_Alumno;
            this.C_Curso = C_Curso;
            this.Recibo = Recibo;
            this.Matricula = Matricula;
        
        }



    }
}