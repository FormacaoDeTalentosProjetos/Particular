using System.Net;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio.Interface;
using Scopio.API.Model;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Scopio.API.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Produces("application/json")]
    [Route("api/User")]
    public class UserController: Controller
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IUserNegocio _userNegocio;
        
        /// <summary>
        /// 
        /// </summary>
        public UserController(IUserNegocio userNegocio)
        {
            _userNegocio = userNegocio;
        }
        
        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DOS "USUÁRIOS"
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(User), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_userNegocio.Selecionar());
        }
        
        /// <summary>
        /// MÉTODO QUE OBTÉM UMA LISTA DOS "USUÁRIOS" ATIVOS
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("Ativos")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(User), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetAtivos()
        {
            return Ok(_userNegocio.SelecionarAtivos());
        }
        
        /// <summary>
        /// MÉTODO QUE OBTÉM UM "USUÁRIO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{id}", Name = "UserGetId")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(User), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_userNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "USUÁRIO" POR {NOME} OU PARTE DO {NOME}
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Nome/{nome}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(User), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetUser(string nome)
        {
            return Ok(_userNegocio.SelecionarPorNome(nome));
        }

        /// <summary>
        /// MÉTODO QUE OBTÉM UM "USUÁRIO" POR RESPONSABILIDADE {PAPEL}
        /// </summary>
        /// <param name="IdPapel"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("Papel/{IdPapel}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(User), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetPapel(int IdPapel)
        {
            return Ok(_userNegocio.SelecionarPorPapel(IdPapel));
        }


        /// <summary>
        /// MÉTODO QUE INSERE UM "USUÁRIO"
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Login), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]UserInput input)
        {
            var objUser = new User()
            {
                UserName = input.Username,
                Senha = input.Senha,
                IdPapel = input.IdPapel,
                IdNivel = input.IdNivel,
                Avatar = input.Avatar,
                Nome = input.Nome,
                Email = input.Email,
                Tel = input.Tel
            };

            var idUser = _userNegocio.Inserir(objUser);
            objUser.ID = idUser;
            return CreatedAtRoute(routeName: "UserGetId", routeValues: new { id = idUser }, value: objUser);
        }


        /// <summary>
        /// MÉTODO QUE ALTERA DADOS DO "USUÁRIO" POR {ID}
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Perfil/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(User), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutPerfil([FromRoute]int id, [FromBody]UserInput input)
        {
            var objUser = new User()
            {
                IdPapel = input.IdPapel,
                IdNivel = input.IdNivel,
                Avatar = input.Avatar,
                Nome = input.Nome,
                Email = input.Email,
                Tel = input.Tel
            };

            var obj = _userNegocio.AlterarPerfilUsuario(id, objUser);
            return Accepted(obj);
        }

        /// <summary>
        /// MÉTODO QUE ALTERA STATUS DO "USUÁRIO" POR {ID} (ATIVO/INATIVO)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("AtivoInativo/{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(User), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult PutAtivoInativo([FromRoute]int id, [FromBody]UserInput input)
        {
            var objUser = new User()
            {
                Status = input.Status
            };

            var obj = _userNegocio.AlterarAtivoInativo(id, objUser);
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
            _userNegocio.Deletar(id);
            return Ok();
        }
    }
}
