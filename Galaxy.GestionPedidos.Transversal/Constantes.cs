using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Galaxy.GestionPedidos.Transversal
{
    public static class Constantes
    {

        public static readonly string DirectorioBase = Path.Combine(Directory.GetCurrentDirectory(), "Data");
        public static readonly string XmlCliente = Path.Combine(DirectorioBase, "clientes.xml");
        public static readonly string XmlProducto = Path.Combine(DirectorioBase, "producto.xml");
    }
}
