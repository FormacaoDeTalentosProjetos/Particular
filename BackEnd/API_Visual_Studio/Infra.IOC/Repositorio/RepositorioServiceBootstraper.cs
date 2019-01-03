using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.DependencyInjection;
using Repositorio;
using Dominio.Repositorio;

namespace Infra.IOC.Repositorio
{
    internal class RepositorioServiceBootstraper
    {
        internal void ChildServiceRegister(IServiceCollection services)
        {
            services.AddScoped<ILoginRepositorio, LoginRepositorio>();
            services.AddScoped<IMembroSquadRepositorio, MembroSquadRepositorio>();
            services.AddScoped<IMembroTriboRepositorio, MembroTriboRepositorio>();
            services.AddScoped<IMentorRepositorio, MentorRepositorio>();
            services.AddScoped<IMentorSquadRepositorio, MentorSquadRepositorio>();
            services.AddScoped<IMentorTriboRepositorio, MentorTriboRepositorio>();
            services.AddScoped<INivelPapelRepositorio, NivelPapelRepositorio>();
            services.AddScoped<IPaisRepositorio, PaisRepositorio>();
            services.AddScoped<IPapelRepositorio, PapelRepositorio>();
            services.AddScoped<ISquadRepositorio, SquadRepositorio>();
            services.AddScoped<ITriboRepositorio, TriboRepositorio>();
            services.AddScoped<IUnidadeRepositorio, UnidadeRepositorio>();
            services.AddScoped<IUserRepositorio, UserRepositorio>();
        }
    }
}
