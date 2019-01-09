using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface IResponsabilidadeNegocio
    {
        int Inserir(Responsabilidade entity);
        IEnumerable<Responsabilidade> Selecionar();
        Responsabilidade SelecionarPorId(int id);
        Responsabilidade SelecionarPorNome(string Nome);
    }
}