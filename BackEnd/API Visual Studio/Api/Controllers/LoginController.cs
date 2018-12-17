using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Api.Model;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Login")]
    public class LoginController : Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private LoginNegocio _loginNegocio;

        /// <summary>
        /// 
        /// </summary>
        public LoginController()
        {
            _loginNegocio = new LoginNegocio();
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
        /// MÉTODO QUE OBTÉM UM "LOGIN" POR {NICK}
        /// </summary>
        /// <param name="nick"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Username/{user}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Login), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetUser(string user)
        {
            return Ok(_loginNegocio.SelecionarPorUser(user));
        }

        /// <summary>
        /// MÉTODO QUE VALIDA O LOGIN POR ({CPF} / {EMAIL}) E {SENHA}
        /// </summary>
        /// <param name="login"></param>
        /// <param name="senha"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Validar")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Login), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetLogin([FromQuery]string login, [FromQuery]string senha)
        {
            return Ok(_loginNegocio.EfetuarLoginUser(login, senha));
        }


        /*
        /// <summary>
        /// MÉTODO QUE INSERE UM "LOGIN"
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Login), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]LoginInput input)
        {
            var objLogin = new Login()
            {
                User = input.User,
                Senha = input.Senha
            };

            var idLogin = _loginNegocio.Inserir(objLogin);
            objLogin.ID = idLogin;
            return CreatedAtRoute(nameof(GetId), new { id = idLogin }, objLogin);
        }
        */

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
        /// MÉTODO QUE ALTERA SENHA DO "LOGIN" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Username/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Login), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutUser([FromRoute]int id, [FromBody]LoginInput input)
        {
            var objLogin = new Login()
            {
                Username = input.Username
            };

            var obj = _loginNegocio.AlterarUser(id, objLogin);
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
