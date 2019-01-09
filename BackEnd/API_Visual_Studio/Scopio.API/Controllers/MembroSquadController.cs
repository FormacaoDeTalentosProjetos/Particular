using System.Net;
using Dominio;
using Dominio.dto;
using Microsoft.AspNetCore.Mvc;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{/// <summary>
/// 
/// </summary>
    [Produces("application/json")]
    [Route("api/MembroSquad")]
    public class MembroSquadController: Controller
    {
        /// <summary>
        /// Declara as regras de negócio para o membro.
        /// </summary>
        private readonly IMembroSquadNegocio _membroNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public MembroSquadController(IMembroSquadNegocio membroNegocio)
        {
            _membroNegocio = membroNegocio;
        }

        /// <summary>
        /// Método que insere uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="input">Objeto com os dados da vinculação.</param>
        /// <returns></returns>
        /// <response code="201">Created</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(MembroSquad), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]MembroSquadInput input)
        {
            var objMembro = new MembroSquad()
            {
                IdSquad = input.IdSquad,
                IdUser = input.IdUser
            };

            var idMembro = _membroNegocio.Inserir(objMembro);
            objMembro.Id = idMembro;
            return CreatedAtRoute(routeName: "MembroSquadGetId", routeValues: new { id = idMembro }, value: objMembro);
        }

        /// <summary>
        /// Método que obtêm todos as vinculações entre Membro e Squad.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MembroSquad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_membroNegocio.Selecionar());
        }

        /// <summary>
        /// Método que obtêm uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="id">Usado para selecionar a vinculação.</param>
        /// <returns></returns>
        /// <remarks>Obtêm uma vinculação entre membro e squad através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("{id}", Name = "MembroSquadGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MembroSquad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_membroNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que retorna lista de membros de uma squad.
        /// </summary>
        /// <param name="id">Usado para selecionar a vinculação.</param>
        /// <returns></returns>
        /// <remarks>Obtêm uma vinculação entre membro e squad através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("IdSquad/{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MembroSquadDto), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetIdSquad(int id)
        {
            return Ok(_membroNegocio.SelecionarPorIdSquad(id));
        }



        /// <summary>
        /// Método que altera os dados de uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="id">Usado para selecionar a vinculação.</param>
        /// <param name="input">Objeto que contêm os dados a serem alterados.</param>
        /// <returns></returns>
        /// <response code="202">Accepted</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(MembroSquad), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Put([FromRoute]int id, [FromBody]MembroSquadInput input)
        {
            var objMembro = new MembroSquad()
            {
                IdSquad = input.IdSquad,
                IdUser = input.IdUser
            };

            var obj = _membroNegocio.Alterar(id, objMembro);
            return Accepted(obj);
        }

        /// <summary>
        /// Método que deleta uma vinculação entre Membro e Squad.
        /// </summary>
        /// <param name="id">Usado para selecionar a vinculação.</param>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFound</response>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _membroNegocio.Deletar(id);
            return Ok();
        }
    }
}
