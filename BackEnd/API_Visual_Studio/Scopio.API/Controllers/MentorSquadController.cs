using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Dominio;
using Dominio.dto;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{/// <summary>
/// 
/// </summary>
    [Produces("application/json")]
    [Route("api/MentorSquad")]
    public class MentorSquadController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MentorSquadNegocio _mentorSquadNegocio;

        /// <summary>
        /// 
        /// </summary>
        public MentorSquadController()
        {
            _mentorSquadNegocio = new MentorSquadNegocio();
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTADE ASSOCIAÇÕES "MENTOR_SQUAD"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorSquad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_mentorSquadNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA ASSOCIAÇÃO "MENTOR_SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}", Name = "MentorSquadGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorSquad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_mentorSquadNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que retorna lista de mentores de uma squad.
        /// </summary>
        /// <returns></returns>
        /// <remarks>Obtêm uma vinculação entre membro e squad através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("Squads")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorSquadDto), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetIdSquad()
        {
            return Ok(_mentorSquadNegocio.SelecionarSquads());
        }

        /// <summary>
        /// MÉTODO QUE INSERE UMA ASSOCIAÇÃO "MENTOR_SQUAD"
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(MentorSquad), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]MentorSquadInput input)
        {
            var objMentorSquad = new MentorSquad()
            {
                IdSquad = input.IdSquad,
                IdMentor = input.IdMentor
            };

            var idMentorSquad = _mentorSquadNegocio.Inserir(objMentorSquad);
            objMentorSquad.ID = idMentorSquad;
            return CreatedAtRoute(routeName: "MentorSquadGetId", routeValues: new { id = idMentorSquad }, value: objMentorSquad);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA UMA ASSOCIAÇÃO "MENTOR_SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(MentorSquad), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutPapel([FromRoute]int id, [FromBody]MentorSquadInput input)
        {
            var objMentorSquad = new MentorSquad()
            {
                IdSquad = input.IdSquad,
                IdMentor = input.IdMentor
            };

            var obj = _mentorSquadNegocio.Alterar(id, objMentorSquad);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UMA ASSOCIAÇÃO "MENTOR_SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _mentorSquadNegocio.Deletar(id);
            return Ok();
        }
    }
}
