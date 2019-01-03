using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{
    /// <summary>
    ///  
    /// </summary>
    [Produces("application/json")]
    [Route("api/Login")]
    
    public class LoginController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ILoginNegocio _loginNegocio;

        /// <summary>
        /// 
        /// </summary>
        public LoginController(ILoginNegocio loginNegocio)
        {
            _loginNegocio = loginNegocio;
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DOS "LOGINS"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Login), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_loginNegocio.Selecionar());
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "LOGIN" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Login), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_loginNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE VALIDA O LOGIN POR {USERNAME}) E {SENHA}
        /// </summary>
        /// <param name="unsername"></param>
        /// <param name="senha"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Validar")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Login), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetLogin([FromQuery]string unsername, [FromQuery]string senha)
        {
            return Ok(_loginNegocio.EfetuarLogin(unsername, senha));
        }

        /// <summary>
        /// MÉTODO QUE ALTERA SENHA DO "LOGIN" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Senha/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Login), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutSenha([FromRoute]int id, [FromBody]LoginInput input)
        {
            var objLogin = new Login()
            {
                Senha = input.Senha
            };

            var obj = _loginNegocio.AlterarSenha(id, objLogin);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA "USERNAME" DO "LOGIN" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Username/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Login), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutLoginUser([FromRoute]int id, [FromBody]LoginInput input)
        {
            var objLogin = new Login()
            {
                Username = input.Username
            };

            var obj = _loginNegocio.AlterarUser(id, objLogin);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA STATUS DO "LOGIN" POR {ID} (ATIVO/INATIVO)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("AtivoInativo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Login), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutAtivoInativo([FromRoute]int id, [FromBody]LoginInput input)
        {
            var objLogin = new Login()
            {
                Status = input.Status
            };

            var obj = _loginNegocio.AlterarAtivoInativo(id, objLogin);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE EXCLUI UM "LOGIN" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _loginNegocio.Deletar(id);
            return Ok();
        }
    }
}
