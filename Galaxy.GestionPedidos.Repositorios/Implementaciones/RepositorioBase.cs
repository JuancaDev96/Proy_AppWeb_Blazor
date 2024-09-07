using Galaxy.GestionPedidos.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Galaxy.GestionPedidos.Repositorios.Implementaciones
{
    public class RepositorioBase<T> where T : EntidadBase, new()
    {
        private readonly string _filePath;
        public RepositorioBase(string filePath)
        {
            _filePath = filePath;
            try
            {
                if (!File.Exists(_filePath))
                {
                    new XDocument(new XElement("Entities")).Save(_filePath);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            
        }

        public void Add(T entity)
        {
            var doc = XDocument.Load(_filePath);
            entity.Id = GetNextId(doc);
            var entityElement = new XElement(typeof(T).Name,
                entity.GetType().GetProperties().Select(prop => new XElement(prop.Name, prop.GetValue(entity))));
            doc.Root!.Add(entityElement);
            doc.Save(_filePath);
        }

        public void Update(T entity)
        {
            var doc = XDocument.Load(_filePath);
            var entityElement = doc.Root!.Elements(typeof(T).Name)
                .FirstOrDefault(e => (int)e.Element("Id")! == entity.Id);

            if (entityElement != null)
            {
                foreach (var prop in entity.GetType().GetProperties())
                {
                    entityElement.SetElementValue(prop.Name, prop.GetValue(entity));
                }

                doc.Save(_filePath);
            }
        }

        public T GetById(int id)
        {
            var doc = XDocument.Load(_filePath);
            var entityElement = doc.Root!.Elements(typeof(T).Name)
                .FirstOrDefault(e => (int)e.Element("Id")! == id);

            if (entityElement != null)
            {
                return CreateEntityFromElement(entityElement);
            }

            return default!;
        }

        public IEnumerable<T> GetAll()
        {
            var doc = XDocument.Load(_filePath);
            return doc.Root!.Elements(typeof(T).Name)
                .Select(CreateEntityFromElement)
                .ToList();
        }

        public void Delete(int id)
        {
            var doc = XDocument.Load(_filePath);
            var entityElement = doc.Root!.Elements(typeof(T).Name)
                .FirstOrDefault(e => (int)e.Element("Id")! == id);

            if (entityElement != null)
            {
                entityElement.Remove();
                doc.Save(_filePath);
            }
        }

        private int GetNextId(XDocument doc)
        {
            var lastId = doc.Root!.Elements(typeof(T).Name)
                .Max(e => (int?)e.Element("Id")) ?? 0;
            return lastId + 1;
        }


        private T CreateEntityFromElement(XElement element)
        {
            var entity = new T();

            foreach (var prop in entity.GetType().GetProperties())
            {
                var value = element.Element(prop.Name)?.Value!;
                if (prop.PropertyType == typeof(int))
                {
                    prop.SetValue(entity, int.Parse(value));
                }
                else if (prop.PropertyType == typeof(DateTime))
                {
                    prop.SetValue(entity, DateTime.Parse(value));
                }
                else if (prop.PropertyType == typeof(bool))
                {
                    prop.SetValue(entity, Boolean.Parse(value));
                }
                else if (prop.PropertyType == typeof(Decimal))
                {
                    prop.SetValue(entity, Decimal.Parse(value));
                }
                else
                {
                    prop.SetValue(entity, value);
                }
            }

            return entity;
        }

    }

}
