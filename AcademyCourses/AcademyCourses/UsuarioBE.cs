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
        public string   Sexo { get; set; }
        public string Nick { get; set; }
        public string Contrasena { get; set; }
        public string Estado { get; set; }

        public UsuarioBE() { }

        public UsuarioBE(int C_Usuario, string ApellidoP, string ApellidoM, string Nombre,
                          string Email, string Sexo, string Nick, string Contrasena, string Estado)
        {

            this.C_Usuario = C_Usuario;
            this.ApellidoP = ApellidoP;
            this.ApellidoM = ApellidoM;
            this.Nombre = Nombre;
            this.Email = Email;
            this.Sexo = Sexo;
            this.Nick = Nick;
            this.Contrasena = Contrasena;
            this.Estado = Estado;
        
        }

    }
}