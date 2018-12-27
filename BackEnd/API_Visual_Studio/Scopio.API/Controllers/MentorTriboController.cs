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
    [Route("api/MentorTribo")]
    public class MentorTriboController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MentorTriboNegocio _mentorTriboNegocio;

        /// <summary>
        /// 
        /// </summary>
        public MentorTriboController()
        {
            _mentorTriboNegocio = new MentorTriboNegocio();
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTADE ASSOCIAÇÕES "MENTOR_TRIBO"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorTribo), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_mentorTriboNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA ASSOCIAÇÃO "MENTOR_TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}", Name = "MentorTriboGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorTribo), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_mentorTriboNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que retorna lista de membros de uma Tribo.
        /// </summary>
        /// <param name="id">Usado para selecionar a vinculação.</param>
        /// <returns></returns>
        /// <remarks>Obtêm uma vinculação entre membro e squad através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("IdTribo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(MentorTriboDto), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetIdSquad(int id)
        {
            return Ok(_mentorTriboNegocio.SelecionarPorIdTribo(id));
        }

        /// <summary>
        /// MÉTODO QUE INSERE UMA ASSOCIAÇÃO "MENTOR_TRIBO"
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(MentorTribo), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]MentorTriboInput input)
        {
            var objMentorTribo = new MentorTribo()
            {
                IdTribo = input.IdTribo,
                IdUser = input.IdUser
            };

            var idMentorTribo = _mentorTriboNegocio.Inserir(objMentorTribo);
            objMentorTribo.ID = idMentorTribo;
            return CreatedAtRoute(routeName: "MentorTriboGetId", routeValues: new { id = idMentorTribo }, value: objMentorTribo);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA UMA ASSOCIAÇÃO "MENTOR_TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(MentorTribo), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutPapel([FromRoute]int id, [FromBody]MentorTriboInput input)
        {
            var objMentorTribo = new MentorTribo()
            {
                IdTribo = input.IdTribo,
                IdUser = input.IdUser
            };

            var obj = _mentorTriboNegocio.Alterar(id, objMentorTribo);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UMA ASSOCIAÇÃO "MENTOR_TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _mentorTriboNegocio.Deletar(id);
            return Ok();
        }
    }
}
