using System.Net;
using Dominio;
using Dominio.dto;
using Microsoft.AspNetCore.Mvc;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{
    /// <summary>
    /// Tipo de dado a ser retornado e rota da API.
    /// </summary>
    [Produces("application/json")]
    [Route("api/Mentor")]
    public class MentorController: Controller
    {

        /// <summary>
        /// Declara as regras de negócio para o mentor.
        /// </summary>
        private readonly IMentorNegocio _mentorNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public MentorController(IMentorNegocio mentorNegocio)
        {
            _mentorNegocio = mentorNegocio;
        }

        /// <summary>
        /// Método que insere um mentor.
        /// </summary>
        /// <param name="input">Objeto com os dados do mentor.</param>
        /// <returns></returns>
        /// <response code="201">Created</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Mentor), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]MentorInput input)
        {
            var objMentor = new Mentor()
            {
                IdUser = input.IdUser
            };

            var idMentor = _mentorNegocio.Inserir(objMentor);
            objMentor.ID = idMentor;

            return CreatedAtRoute(routeName: "MentorGetId", routeValues: new { id = idMentor }, value: objMentor);
        }

        /// <summary>
        /// Método que obtêm todos os mentores.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Mentor), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_mentorNegocio.Selecionar());
        }

        /// <summary>
        /// Método que obtêm um mentor.
        /// </summary>
        /// <param name="id">Usado para selecionar o mentor.</param>
        /// <returns></returns>
        /// <remarks>Obtêm um mentor através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("{id}", Name = "MentorGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Mentor), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_mentorNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que obtêm todos os mentores ativos.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("MentoresAtivos")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorDto), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetAtivos()
        {
            return Ok(_mentorNegocio.SelecionarAtivos());
        }



        /// <summary>
        /// Método que deleta um mentor.
        /// </summary>
        /// <param name="id">Usado para selecionar o mentor.</param>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFound</response>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _mentorNegocio.Deletar(id);

            return Ok();
        }

    }
}
