using System.Net;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{/// <summary>
 /// 
 /// </summary>
    [Produces("application/json")]
    [Route("api/Responsabilidade")]
    public class ResponsabilidadeController : Controller
    {
     
            /// <summary>
            /// 
            /// </summary>
            private readonly IResponsabilidadeNegocio _responsabilidadeNegocio;

            /// <summary>
            /// 
            /// </summary>
            public ResponsabilidadeController(IResponsabilidadeNegocio responsabilidadeNegocio)
            {
                _responsabilidadeNegocio = responsabilidadeNegocio;
            }


        /// <summary>
        /// MÉTODO QUE INSERE UMA "Responsabilidade"
        /// </summary>
        /// <param name="Input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Responsabilidade), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]ResponsabilidadeInput Input)
           {
                var objResponsabilidade = new Responsabilidade()
                {
                    Nome = Input.Nome,
                };

                var idResponsabilidade = _responsabilidadeNegocio.Inserir(objResponsabilidade);
                objResponsabilidade.ID = idResponsabilidade;
                return CreatedAtRoute(routeName: "ResponsabilidadeGetId", routeValues: new { id = idResponsabilidade }, value: objResponsabilidade);
            }

            /// <summary>
            /// MÉTODO QUE OBTÉM UMA LISTA DOS "RESPONSABILIDADE"
            /// </summary>
            /// <returns></returns>
            [HttpGet]
            [SwaggerResponse((int)HttpStatusCode.OK, typeof(Responsabilidade), nameof(HttpStatusCode.OK))]
            [SwaggerResponse((int)HttpStatusCode.NotFound)]
            public IActionResult Get()
            {
                return Ok(_responsabilidadeNegocio.Selecionar());
            }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA "RESPONSABILIDADE" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}", Name = "ResponsabilidadeGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Responsabilidade), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_responsabilidadeNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "RESPONSABILIDADE" PELO {NOME}
        /// </summary>
        /// <param name="Nome"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Descricao/{Nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Responsabilidade), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetPapel(string Nome)
        {
            return Ok(_responsabilidadeNegocio.SelecionarPorNome(Nome));
        }
    }
}
