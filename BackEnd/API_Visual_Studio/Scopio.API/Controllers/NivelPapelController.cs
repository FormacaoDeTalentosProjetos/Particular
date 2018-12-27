using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Net;

namespace Scopio.API.Controllers
{
    /// <summary>
    /// Tipo de dado a ser retornado e rota da API.
    /// </summary>
    [Produces("application/json")]
    [Route("api/NivelPapel")]
    public class NivelPapelController: Controller
    {
        /// <summary>
        /// Declara as regras de negócio para os niveis de papel.
        /// </summary>
        private readonly NivelPapelNegocio _nivelPapelNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public NivelPapelController()
        {
            _nivelPapelNegocio = new NivelPapelNegocio();
        }

        /// <summary>
        /// Método que obtêm todos os niveis de papel.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(NivelPapel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_nivelPapelNegocio.Selecionar());
        }

        /// <summary>
        /// Método que obtêm um nível de papel.
        /// </summary>
        /// <param name="id">Usado para selecionar o nível de papel.</param>
        /// <returns></returns>
        /// <remarks>Obtêm um nível de papel através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(NivelPapel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_nivelPapelNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que obtêm um nível de papel.
        /// </summary>
        /// <param name="nome">Usado para selecionar o nível de papel.</param>
        /// <returns></returns>
        /// <remarks>Obtêm um nível de papel através do Nome informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("Nome/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(NivelPapel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetNome(string nome)
        {
            return Ok(_nivelPapelNegocio.SelecionarPorNome(nome));
        }

        /// <summary>
        /// Método que insere um nivel de papel.
        /// </summary>
        /// <param name="input">Objeto com os dados do nível de papel.</param>
        /// <returns></returns>
        /// <response code="201">Created</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(NivelPapel), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]NivelPapelInput input)
        {
            var objNivelPapel = new NivelPapel()
            {
                Desc = input.Desc,
                Nivel = input.Nivel
            };

            var idNivelPapel = _nivelPapelNegocio.Inserir(objNivelPapel);
            objNivelPapel.ID = idNivelPapel;
            return CreatedAtRoute(nameof(GetId), new { id = idNivelPapel }, objNivelPapel);
        }

        /// <summary>
        /// Método que altera os dados de um nível de papel.
        /// </summary>
        /// <param name="id">Usado para selecionar o nível de papel.</param>
        /// <param name="input">Objeto que contêm os dados a serem alterados.</param>
        /// <returns></returns>
        /// <response code="202">Accepted</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(NivelPapel), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Put([FromRoute]int id, [FromBody]NivelPapelInput input)
        {
            var objNivelPapel = new NivelPapel()
            {
                Desc = input.Desc,
                Nivel = input.Nivel
            };

            var obj = _nivelPapelNegocio.Alterar(id, objNivelPapel);
            return Accepted(obj);
        }

        /// <summary>
        /// Método que deleta um nível de papel.
        /// </summary>
        /// <param name="id">Usado para selecionar o nível de papel.</param>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFound</response>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _nivelPapelNegocio.Deletar(id);
            return Ok();
        }

    }
}
