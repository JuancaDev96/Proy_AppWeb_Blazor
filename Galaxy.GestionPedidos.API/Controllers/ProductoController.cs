using Galaxy.GestionPedidos.Entidades;
using Galaxy.GestionPedidos.Repositorios.Interfaces;
using Galaxy.GestionPedidos.Transversal.Dto.Request.Producto;
using Galaxy.GestionPedidos.Transversal.Dto.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Galaxy.GestionPedidos.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductoController : ControllerBase
    {
        IProductoRepositorio _repositorio;
        public ProductoController(IProductoRepositorio repositorio)
        {
            _repositorio = repositorio;
        }

        // GET: api/<ProductosController>
        [HttpGet]
        public IActionResult Get()
        {
            var lista = _repositorio.GetAll();

            var resultado = (from item in lista
                             select new ListadoProductoResponse
                             {
                                 Codigo = item.Codigo,
                                 Stock = item.Stock,
                                 Descripcion = item.Descripcion,
                                 Precio = item.Precio,
                                 Id = item.Id,
                                 Nombre = item.Nombre
                             }).ToList();

            return Ok(resultado);
        }

        // POST api/<ProductosController>
        [HttpPost]
        public IActionResult Post(RegistroProductoRequest request)
        {
            Producto producto = new()
            {
                Nombre = request.Nombre,
                Descripcion = request.Descripcion,
                Precio = request.Precio,
                Stock = request.Stock,
                Codigo = request.Codigo
            };

            _repositorio.Add(producto);
            return Ok();
        }
    }
}
