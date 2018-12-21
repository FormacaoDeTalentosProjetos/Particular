using Dominio;
using Dominio.Excecoes;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class MapaNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MapaRepositorio _mapaRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public MapaNegocio()
        {
            _mapaRepositorio = new MapaRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Mapa SelecionarPorDescricao(string desc)
        {
            var obj = _mapaRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }
    }
}
