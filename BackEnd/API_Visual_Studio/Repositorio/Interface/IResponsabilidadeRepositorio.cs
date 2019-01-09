using System.Collections.Generic;
using Dominio;

namespace Repositorio
{
    public interface IResponsabilidadeRepositorio
    {
        int Inserir(Responsabilidade entity);
        IEnumerable<Responsabilidade> Selecionar();
        Responsabilidade SelecionarPorId(int id);
        Responsabilidade SelecionarPorNome(string Nome);
    }
}