using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class AdministradorBE : UsuarioBE
    {

        public int C_Trabajador;

        // Constructor

        public AdministradorBE() { }

        public AdministradorBE(int C_Administrador, string ApellidoP, string ApellidoM, string Nombre,
                          string Email, string Sexo, string Nick, string Contraseña, Boolean Estado, int C_Trabajador)
            : base(C_Administrador, ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contraseña, Estado)
        {

            this.C_Trabajador = C_Trabajador;
        
        }

    }
}