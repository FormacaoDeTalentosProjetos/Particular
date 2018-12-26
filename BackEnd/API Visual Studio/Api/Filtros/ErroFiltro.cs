using Dominio.Excecoes;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Api.Filtros
{
    /// <summary>
    /// 
    /// </summary>
    public class ErroFiltro
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="context"></param>
        /// <param name="next"></param>
        /// <returns></returns>
        public async Task Invoke(HttpContext context, Func<Task> next)
        {
            try
            {
                await next();
            }
            catch (Exception ex)
            {
                await HandleExceptionAsync(context, ex);
            }
        }

        private static Task HandleExceptionAsync(HttpContext context, Exception exception)
        {
            HttpStatusCode code;

            switch (exception)
            {
                case NaoEncontradoException nfEx:
                    code = HttpStatusCode.NotFound;
                    break;
                case ConflitoException nfEx:
                    code = HttpStatusCode.Conflict;
                    break;
                default:
                    code = HttpStatusCode.InternalServerError;
                    break;
            }

            var result = JsonConvert.SerializeObject(new { error = exception.Message, inner = exception.InnerException });
            context.Response.ContentType = "application/json";
            context.Response.StatusCode = (int)code;
            return context.Response.WriteAsync(result);
        }
    }
}
