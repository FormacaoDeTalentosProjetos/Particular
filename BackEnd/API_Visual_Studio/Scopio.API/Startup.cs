using System;
using System.IO;
using Scopio.API.Filtros;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.PlatformAbstractions;
using Swashbuckle.AspNetCore.Swagger;

namespace Scopio.API
{
    /// <summary>
    /// 
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="configuration"></param>
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        /// <summary>
        /// 
        /// </summary>
        public IConfiguration Configuration { get; }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="services"></param>
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();
            services.AddCors();

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1",
                    new Info
                    {
                        Title = "Scopio",
                        Version = "v1",
                        Description = "API Projeto Scopio - Formação de Talentos - Grupo VICERI",
                        Contact = new Contact
                        {
                            Name = "Viceri",
                            Url = "http://www.viceri.com.br"
                        }
                    });

                // Usar a documentação XML dos métodos.
                var basePath = PlatformServices.Default.Application.ApplicationBasePath;
                var xmlPath = Path.Combine(basePath, "Scopio.API.xml");
                c.IncludeXmlComments(xmlPath);

            });

            //services.AddScoped<ErroFiltro>();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="app"></param>
        /// <param name="env"></param>
        /// <param name="serviceFactory"></param>
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, IServiceProvider serviceFactory)
        {
            string endPoint = "/swagger/v1/swagger.json";

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            //app.Use((c, next) => serviceFactory.GetService<ErroFiltro>().Invoke(c, next));

            app.UseCors(c =>
            {
                c.AllowAnyHeader();
                c.AllowAnyMethod();
                c.AllowAnyOrigin();
            });

            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint(endPoint, "Scopio - Grupo Viceri");
            });

            app.UseMvc();
        }

    }
}
