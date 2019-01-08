using Microsoft.Extensions.DependencyInjection;
using Negocio;
using Negocio.Interface;

namespace Infra.IOC.Negocio
{
    class NegocioServiceBootstraper
    {
        internal void ChildServiceRegister(IServiceCollection services)
        {
            services.AddScoped<ILoginNegocio, LoginNegocio>();
            services.AddScoped<IMembroSquadNegocio, MembroSquadNegocio>();
            services.AddScoped<IMembroTriboNegocio, MembroTriboNegocio>();
            services.AddScoped<IMentorNegocio, MentorNegocio>();
            services.AddScoped<IMentorSquadNegocio, MentorSquadNegocio>();
            services.AddScoped<IMentorTriboNegocio, MentorTriboNegocio>();
            services.AddScoped<INivelPapelNegocio, NivelPapelNegocio>();
            services.AddScoped<IPaisNegocio, PaisNegocio>();
            services.AddScoped<IPapelNegocio, PapelNegocio>();
            services.AddScoped<ISquadNegocio, SquadNegocio>();
            services.AddScoped<ITriboNegocio, TriboNegocio>();
            services.AddScoped<IUnidadeNegocio, UnidadeNegocio>();
            services.AddScoped<IUserNegocio, UserNegocio>();
        }
    }
}
