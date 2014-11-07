using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class CategoriaBE
    {

        public int C_Categoria { get; set; }
        public string Descripcion { get; set; }

        public CategoriaBE() { }

        public CategoriaBE(int C_Categoria, int Descripcion) {

            this.C_Categoria = C_Categoria;
            this.Descripcion = Descripcion;
        
        
        }

    }


}