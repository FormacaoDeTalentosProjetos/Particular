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
{
    [Produces("application/json")]
    [Route("api/Papel")]
    public class PapelController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly PapelNegocio _papelNegocio;

        /// <summary>
        /// 
        /// </summary>
        public PapelController()
        {
            _papelNegocio = new PapelNegocio();
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DOS "PAPEIS"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_papelNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "PAPEL" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_papelNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "PAPEL" PELO {NOME}
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Descricao/{desc}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetPapel(string desc)
        {
            return Ok(_papelNegocio.SelecionarPorDescricao(desc));
        }

        /// <summary>
        /// MÉTODO QUE INSERE UM "PAPEL"
        /// </summary>
        /// <param name="Input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Papel), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]PapelInput Input)
        {
            var objPapel = new Papel()
            {
                Desc = Input.Desc,
                Sigla = Input.Sigla,
                Nivel = Input.Nivel
            };

            var idPapel = _papelNegocio.Inserir(objPapel);
            objPapel.ID = idPapel;
            return CreatedAtRoute(nameof(GetId), new { id = idPapel }, objPapel);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA UM "PAPEL" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Papel), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutPapel([FromRoute]int id, [FromBody]PapelInput input)
        {
            var objPapel = new Papel()
            {
                Desc = input.Desc,
                Sigla = input.Sigla,
                Nivel = input.Nivel
            };

            var obj = _papelNegocio.Alterar(id, objPapel);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UM "PAPEL" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _papelNegocio.Deletar(id);
            return Ok();
        }
    }
}
