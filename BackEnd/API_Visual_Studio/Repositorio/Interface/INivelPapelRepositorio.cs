using System.Collections.Generic;
using Dominio;

namespace Repositorio.Interface
{
    public interface INivelPapelRepositorio
    {
        void Alterar(NivelPapel entity);
        void Deletar(int id);
        int Inserir(NivelPapel entity);
        IEnumerable<NivelPapel> Selecionar();
        NivelPapel SelecionarPorId(int id);
        NivelPapel SelecionarPorNome(string nome);
    }
}