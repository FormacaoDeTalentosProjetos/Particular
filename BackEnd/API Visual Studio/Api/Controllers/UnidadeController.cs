using Api.Model;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Net;

namespace Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Unidade")]
    public class UnidadeController: Controller
    {
        /// <summary>
        /// Declara as regras de negócio para a unidade.
        /// </summary>
        private readonly UnidadeNegocio _unidadeNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public UnidadeController()
        {
            _unidadeNegocio = new UnidadeNegocio();
        }

        /// <summary>
        /// Método que obtêm todos as unidades.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Unidade), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_unidadeNegocio.Selecionar());
        }

        /// <summary>
        /// Método que obtêm uma unidade.
        /// </summary>
        /// <param name="id">Usado para selecionar a unidade.</param>
        /// <returns></returns>
        /// <remarks>Obtêm uma unidade através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Unidade), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_unidadeNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que obtêm uma unidade.
        /// </summary>
        /// <param name="nome">Usado para selecionar a unidade.</param>
        /// <returns></returns>
        /// <remarks>Obtêm uma unidade através do Nome informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("Nome/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Unidade), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetNome(string nome)
        {
            return Ok(_unidadeNegocio.SelecionarPorNome(nome));
        }

        /// <summary>
        /// Método que insere uma unidade.
        /// </summary>
        /// <param name="input">Objeto com os dados da unidade.</param>
        /// <returns></returns>
        /// <response code="201">Created</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Unidade), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]UnidadeInput input)
        {
            var objUnidade = new Unidade()
            {
                IdPais = input.IdPais,
                Nome = input.Nome,
                EstSigla = input.EstSigla
            };

            var idUnidade = _unidadeNegocio.Inserir(objUnidade);
            objUnidade.Id = idUnidade;
            return CreatedAtRoute(nameof(GetId), new { id = idUnidade }, objUnidade);
        }

        /// <summary>
        /// Método que altera os dados de uma unidade.
        /// </summary>
        /// <param name="id">Usado para selecionar a unidade.</param>
        /// <param name="input">Objeto que contêm os dados a serem alterados.</param>
        /// <returns></returns>
        /// <response code="202">Accepted</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Unidade), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Put([FromRoute]int id, [FromBody]UnidadeInput input)
        {
            var objUnidade = new Unidade()
            {
                IdPais = input.IdPais,
                Nome = input.Nome,
                EstSigla = input.EstSigla
            };

            var obj = _unidadeNegocio.Alterar(id, objUnidade);
            return Accepted(obj);
        }

        /// <summary>
        /// Método que deleta uma unidade.
        /// </summary>
        /// <param name="id">Usado para selecionar a unidade.</param>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFound</response>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _unidadeNegocio.Deletar(id);
            return Ok();
        }
    }
}
