using Galaxy.GestionPedidos.Entidades;
using Galaxy.GestionPedidos.Transversal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Galaxy.GestionPedidos.Repositorios.Interfaces
{
    public interface IRepositorioBase<T> where T : EntidadBase
    {
        void Add(T entity);
        IEnumerable<T> GetAll();
    }
}
