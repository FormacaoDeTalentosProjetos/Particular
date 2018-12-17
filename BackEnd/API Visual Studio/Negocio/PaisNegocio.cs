using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class PaisNegocio: INegocioBase
    {
        private readonly PaisRepositorio _paisRepositorio;

        public PaisNegocio()
        {
            _paisRepositorio = new PaisRepositorio();
        }

        /// <summary>
        /// Seleciona todas os paises do Database.
        /// </summary>
        /// <returns>Lista de paises</returns>
        public IEnumerable<Pais> Selecionar()
        {
            var lista = _paisRepositorio.Selecionar();
            return lista;
        }

        public Pais SelecionarPorId(int id)
        {
            var obj = _paisRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }
    }
}
