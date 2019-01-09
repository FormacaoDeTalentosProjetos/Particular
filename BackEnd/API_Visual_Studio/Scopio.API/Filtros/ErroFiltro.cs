using Dominio.Excecoes;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Scopio.API.Filtros
{
    /// <summary>
    /// 
    /// </summary>
    public class ErroFiltro
    {
        private readonly RequestDelegate next;

        public ErroFiltro(RequestDelegate next)
        {
            this.next = next;
        }

        public async Task Invoke(HttpContext context)
        {
            try
            {
                await next(context);
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
                case RecusadoException nfEx:
                    code = HttpStatusCode.Forbidden;
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
