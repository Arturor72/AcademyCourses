using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class ProfesorBE
    {

        public int C_Profesor { get; set; }
        public int C_Trabajador { get; set; }
        public string ApellidoP { get; set; }
        public string ApellidoM { get; set; }
        public string Nombre { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
        public Boolean Estado { get; set; }

        public ProfesorBE() { }

        public ProfesorBE(int C_Profesor, int C_Trabajador, string ApellidoP, string ApellidoM, string Nombre,
                              string Telefono, string Email, Boolean Estado)
        {

            this.C_Profesor = C_Profesor;
            this.C_Trabajador = C_Trabajador;
            this.ApellidoP = ApellidoP;
            this.ApellidoM = ApellidoM;
            this.Nombre = Nombre;
            this.Telefono = Telefono;
            this.Email = Email;
            this.Estado = Estado;
        
        }

    }
}