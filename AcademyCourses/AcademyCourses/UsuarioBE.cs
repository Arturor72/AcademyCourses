using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class UsuarioBE
    {
        public int C_Usuario { get; set; }
        public string ApellidoP { get; set; }
        public string ApellidoM { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public char   Sexo { get; set; }
        public string Nick { get; set; }
        public string Contraseña { get; set; }
        public Boolean Estado { get; set; }

        public UsuarioBE() { }

        public UsuarioBE(int C_Usuario, string ApellidoP, string ApellidoM, string Nombre,
                          string Email, char Sexo, string Nick, string Contraseña, Boolean Estado)
        {

            this.C_Usuario = C_Usuario;
            this.ApellidoP = ApellidoP;
            this.ApellidoM = ApellidoM;
            this.Nombre = Nombre;
            this.Email = Email;
            this.Sexo = Sexo;
            this.Nick = Nick;
            this.Contraseña = Contraseña;
            this.Estado = Estado;
        
        }

    }
}