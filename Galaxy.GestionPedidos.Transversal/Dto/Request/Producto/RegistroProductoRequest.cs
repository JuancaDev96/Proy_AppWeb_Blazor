using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Galaxy.GestionPedidos.Transversal.Dto.Request.Producto
{
    public class RegistroProductoRequest
    {
        [Required(ErrorMessage = "Codigo de producto requerido.")]
        public string Codigo { get; set; }
        [Required(ErrorMessage = "Nombre de producto requerido.")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "Descripción de producto requerido.")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "Precio de producto requerido.")]
        public decimal Precio { get; set; }
        [Required(ErrorMessage = "Stock de producto requerido.")]
        public decimal Stock { get; set; }

    }
}
