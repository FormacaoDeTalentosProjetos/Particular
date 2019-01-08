using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface INivelPapelNegocio
    {
        NivelPapel Alterar(int id, NivelPapel entity);
        void Deletar(int id);
        int Inserir(NivelPapel entity);
        IEnumerable<NivelPapel> Selecionar();
        NivelPapel SelecionarPorId(int id);
        NivelPapel SelecionarPorNome(string nome);
        void Validacoes(NivelPapel entity);
    }
}