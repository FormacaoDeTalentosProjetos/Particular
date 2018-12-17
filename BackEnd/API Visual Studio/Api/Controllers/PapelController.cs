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
        private PapelNegocio _papelNegocio;

        public PapelController()
        {
            _papelNegocio = new PapelNegocio();
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DOS "USUÁRIOS"
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
        /// MÉTODO QUE OBTÉM UM "USUÁRIO" POR {ID}
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
        /// MÉTODO QUE OBTÉM UM "USUÁRIO" POR {NOME}
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Descricao/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetUser(string nome)
        {
            return Ok(_papelNegocio.SelecionarPorDescricao(nome));
        }

        /// <summary>
        /// MÉTODO QUE INSERE UM "USUÁRIO"
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
                Nome = Input.Nome,
                Nivel = Input.Nivel
            };

            var idPapel = _papelNegocio.Inserir(objPapel);
            objPapel.ID = idPapel;
            return CreatedAtRoute(nameof(GetId), new { id = idPapel }, objPapel);
        }


        /// <summary>
        /// MÉTODO QUE ALTERA SENHA DO "USUÁRIO" POR {ID}
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
            var objUser = new Papel()
            {
                Nome = input.Nome,
                Nivel = input.Nivel
            };

            var obj = _papelNegocio.AlterarPapel(id, objUser);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UM "USUÁRIO" POR {ID}
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
