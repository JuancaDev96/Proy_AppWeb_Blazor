using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Galaxy.GestionPedidos.Entidades
{
    public class EntidadBase
    {
        public int Id { get; set; }
        public DateTime FechaRegistro { get; set; } = DateTime.Now;
        public string UsuarioCreacion { get; set; } = Environment.UserName;
        public bool Estado { get; set; } = true;
    }
}
