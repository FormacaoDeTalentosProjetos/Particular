using Api.Model;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Swashbuckle.AspNetCore.SwaggerGen;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Api.Controllers
{/// <summary>
/// 
/// </summary>
    [Produces("application/json")]
    [Route("api/Squad")]
    public class SquadController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly SquadNegocio _squadNegocio;

        /// <summary>
        /// 
        /// </summary>
        public SquadController()
        {
            _squadNegocio = new SquadNegocio();
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DAS "SQUADS"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Squad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_squadNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA "SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Squad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_squadNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA "SQUAD" PELO {NOME}
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Descricao/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Squad), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetSquad(string nome)
        {
            return Ok(_squadNegocio.SelecionarPorDescricao(nome));
        }

        /// <summary>
        /// MÉTODO QUE INSERE UMA "SQUAD"
        /// </summary>
        /// <param name="Input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Squad), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]SquadInput Input)
        {
            var objSquad = new Squad()
            {
                IdUnidade = Input.IdUnidade,
                IdTribo = Input.IdTribo,
                Logo = Input.Logo,
                Nome = Input.Nome
            };

            var idSquad = _squadNegocio.Inserir(objSquad);
            objSquad.ID = idSquad;
            return CreatedAtRoute(nameof(GetId), new { id = idSquad }, objSquad);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA UMA "SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Squad), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutSquad([FromRoute]int id, [FromBody]SquadInput input)
        {
            var objSquad = new Squad()
            {
                IdUnidade = input.IdUnidade,
                IdTribo = input.IdTribo,
                Logo = input.Logo,
                Nome = input.Nome
            };

            var obj = _squadNegocio.Alterar(id, objSquad);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE RETIRA ASSOCIÇÃO COM "TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("SairDaTribo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Squad), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutRemoveTribo([FromRoute]int id, [FromBody]SquadInput input)
        {
            var objSquad = new Squad();

            var obj = _squadNegocio.SairDaTribo(id, objSquad);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA STATUS DA "SQUAD" POR {ID} (ATIVO/INATIVO)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("AtivoInativo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Squad), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutAtivoInativo([FromRoute]int id, [FromBody]SquadInput input)
        {
            var objSquad = new Squad()
            {
                Status = input.Status
            };

            var obj = _squadNegocio.AlterarAtivoInativo(id, objSquad);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UMA "SQUAD" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _squadNegocio.Deletar(id);
            return Ok();
        }
    }
}
