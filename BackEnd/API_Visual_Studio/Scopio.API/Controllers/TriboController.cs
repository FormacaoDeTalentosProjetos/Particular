using System.Net;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{/// <summary>
/// 
/// </summary>
    [Produces("application/json")]
    [Route("api/Tribo")]
    public class TriboController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ITriboNegocio _triboNegocio;

        /// <summary>
        /// 
        /// </summary>
        public TriboController(ITriboNegocio triboNegocio)
        {
            _triboNegocio = triboNegocio;
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DAS "TRIBOS"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_triboNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA "TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}", Name = "TriboGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Tribo), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_triboNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DAS "TRIBOS" ATIVAS
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("TriboAtiva")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetTribosAtivas()
        {
            return Ok(_triboNegocio.SelecionarTribosAtivas());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA "TRIBO" PELO {NOME}
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Descricao/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Tribo), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetTribo(string nome)
        {
            return Ok(_triboNegocio.SelecionarPorDescricao(nome));
        }

        /// <summary>
        /// MÉTODO QUE INSERE UMA "TRIBO"
        /// </summary>
        /// <param name="Input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Tribo), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]TriboInput Input)
        {
            var objTribo = new Tribo()
            {
                Logo = Input.Logo,
                Nome = Input.Nome
            };

            var idTribo = _triboNegocio.Inserir(objTribo);
            objTribo.ID = idTribo;
            return CreatedAtRoute(routeName: "TriboGetId", routeValues: new { id = idTribo }, value: objTribo);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA UMA "TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Tribo), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutTribo([FromRoute]int id, [FromBody]TriboInput input)
        {
            var objTribo = new Tribo()
            {
                Logo = input.Logo,
                Nome = input.Nome
            };

            var obj = _triboNegocio.Alterar(id, objTribo);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA STATUS DA "TRIBO" POR {ID} (ATIVO/INATIVO)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("AtivoInativo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Tribo), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutAtivoInativo([FromRoute]int id, [FromBody]TriboInput input)
        {
            var objTribo = new Tribo()
            {
                Status = input.Status
            };

            var obj = _triboNegocio.AlterarAtivoInativo(id, objTribo);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UMA "TRIBO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _triboNegocio.Deletar(id);
            return Ok();
        }
    }
}
