using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcademyCourses
{
    public class HorarioBE
    {
        public int Descripcion { get; set; }
        public string Dias { get; set; }
        public DateTime HoraInicio { get; set; }
        public DateTime HoraFin { get; set; }

        public HorarioBE() { }

        public HorarioBE(int Descripcion, string Dias, DateTime HoraInicio, DateTime HoraFin)
        {

            this.Descripcion = Descripcion;
            this.Dias = Dias;
            this.HoraInicio = HoraInicio;
            this.HoraFin = HoraFin;

        }


    }
}