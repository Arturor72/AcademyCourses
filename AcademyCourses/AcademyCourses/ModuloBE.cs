using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class ModuloBE
    {

        public int C_Modulo { get; set; }
        public CategoriaBE C_Categoria { get; set; }
        public decimal Precio { get; set; }
        public String Descripcion { get; set; }
        public string Estado { get; set; }

        public ModuloBE () { }

        public ModuloBE(int C_Modulo, CategoriaBE C_Categoria, decimal Precio, String Descripcion, string Estado) {

            this.C_Modulo = C_Modulo;
            this.C_Categoria = C_Categoria;
            this.Precio = Precio;
            this.Descripcion = Descripcion;
            this.Estado = Estado;
        
        }


    }
}