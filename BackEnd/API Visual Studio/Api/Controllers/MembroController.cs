using Api.Model;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Net;

namespace Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Membro")]
    public class MembroController: Controller
    {
        /// <summary>
        /// Declara as regras de negócio para o membro.
        /// </summary>
        private MembroNegocio _membroNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public MembroController()
        {
            _membroNegocio = new MembroNegocio();
        }

        /// <summary>
        /// Método que obtêm todos as vinculações entre Membro e Squad.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Membro), nameof(HttpStatusCode.OK))]
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
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Membro), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_membroNegocio.SelecionarPorId(id));
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
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Membro), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]MembroInput input)
        {
            var objMembro = new Membro()
            {
                IdSquad = input.IdSquad,
                IdUser = input.IdUser
            };

            var idMembro = _membroNegocio.Inserir(objMembro);
            objMembro.Id = idMembro;
            return CreatedAtRoute(nameof(GetId), new { id = idMembro }, objMembro);
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
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Membro), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Put([FromRoute]int id, [FromBody]MembroInput input)
        {
            var objMembro = new Membro()
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
