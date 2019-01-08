using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface IPaisNegocio
    {
        Pais Alterar(int id, Pais entity);
        void Deletar(int id);
        int Inserir(Pais entity);
        IEnumerable<Pais> Selecionar();
        Pais SelecionarPorId(int id);
        Pais SelecionarPorNome(string nome);
        void Validacoes(Pais entity);
    }
}