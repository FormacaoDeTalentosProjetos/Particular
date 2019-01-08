using System;
using System.IO;
using Scopio.API.Filtros;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Swashbuckle.AspNetCore.Swagger;
using Infra.IOC;
using System.Reflection;
using Microsoft.AspNetCore.Mvc;

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
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            services.AddCors();


            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1",
                    new Info
                    {
                        Title = "SCOPIO",
                        Version = "v1",
                        Description = "API SCOPIO - Grupo Viceri",
                        Contact = new Contact
                        {
                            Name = "Viceri",
                            Url = "http://www.viceri.com.br"
                        }
                    });

                // Usar a documentação XML dos métodos.
                var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
                c.IncludeXmlComments(xmlPath);
            });
            services.AddScoped<ErroFiltro>();
            RegisterServices(services);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="app"></param>
        /// <param name="env"></param>
        /// <param name="serviceFactory"></param>
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, IServiceProvider serviceFactory)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseCors(c =>
            {
                c.AllowAnyHeader();
                c.AllowAnyMethod();
                c.AllowAnyOrigin();
                c.DisallowCredentials();

            });

            app.UseHttpsRedirection();
            app.UseMiddleware<ErroFiltro>();
            app.UseMvc();

            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "SCOPIO API V1");
            });
        }

        void RegisterServices(IServiceCollection services)
        {
            new RootBootstrapper().ChildServiceRegister(services);
        }
    }
}
