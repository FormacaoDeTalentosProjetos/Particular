using Infra.IOC.Negocio;
using Infra.IOC.Repositorio;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infra.IOC
{
    public class RootBootstrapper
    {
        public void ChildServiceRegister(IServiceCollection services)
        {
            new NegocioServiceBootstraper().ChildServiceRegister(services);
            new RepositorioServiceBootstraper().ChildServiceRegister(services);
        }
    }
}
