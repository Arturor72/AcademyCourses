﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class AlumnoBE : UsuarioBE // Heredamos de UsuarioBE
    {

        public String Ocupacion { get; set; }

        public AlumnoBE() { }

        public AlumnoBE(int C_Alumno, string ApellidoP, string ApellidoM, string Nombre,
                          string Email, string Sexo, string Nick, string Contraseña, string Estado, String Ocupacion)
            : base(C_Alumno, ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contraseña, Estado)
        {

            this.Ocupacion = Ocupacion;
        
        }

    }
}