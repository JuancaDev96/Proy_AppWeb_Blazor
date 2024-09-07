using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Galaxy.GestionPedidos.Entidades;
using Galaxy.GestionPedidos.Repositorios.Interfaces;
using Galaxy.GestionPedidos.Transversal;

namespace Galaxy.GestionPedidos.Repositorios.Implementaciones
{
    public class ProductoRepositorio()  : RepositorioBase<Producto>(Constantes.XmlProducto), IProductoRepositorio
    {
       
    }
}
