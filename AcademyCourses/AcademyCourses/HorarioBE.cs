using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class HorarioBE
    {
        public int C_Horario { get; set; }
        public string Dias { get; set; }
        public TimeSpan HoraInicio { get; set; }
        public TimeSpan HoraFin { get; set; }

        public HorarioBE() { }

        public HorarioBE(int C_Horario, string Dias, TimeSpan HoraInicio, TimeSpan HoraFin)
        {

            this.C_Horario = C_Horario;
            this.Dias = Dias;
            this.HoraInicio = HoraInicio;
            this.HoraFin = HoraFin;

        }


    }
}