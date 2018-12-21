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
        private readonly MapaRepositorio _mapaRepositorio;

        public MapaNegocio()
        {
            _mapaRepositorio = new MapaRepositorio();
        }
    }
}
