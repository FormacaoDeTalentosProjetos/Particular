using Microsoft.AspNetCore.Mvc;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Mapa")]
    public class MapaController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MapaNegocio _mapaNegocio;

        /// <summary>
        /// 
        /// </summary>
        public MapaController()
        {
            _mapaNegocio = new MapaNegocio();
        }


    }
}