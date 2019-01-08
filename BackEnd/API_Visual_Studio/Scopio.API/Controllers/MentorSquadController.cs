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
    [Route("api/MentorSquad")]
    public class MentorSquadController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IMentorSquadNegocio _mentorSquadNegocio;

        /// <summary>
        /// 
        /// </summary>
        public MentorSquadController(IMentorSquadNegocio mentorSquadNegocio)
        {
            _mentorSquadNegocio = mentorSquadNegocio;
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
        /// MÉTODO QUE OBTÉM O MENTOR DA SQUAD PELO ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("squad/{id}", Name = "MentorSquadGetPeloId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorSquad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetSquadId(int id)
        {
            return Ok(_mentorSquadNegocio.SelecionarSquadsPorID(id));
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
                IdUser = input.IdUser
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
