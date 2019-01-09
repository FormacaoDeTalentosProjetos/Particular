using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface IUnidadeNegocio
    {
        Unidade Alterar(int id, Unidade entity);
        void Deletar(int id);
        int Inserir(Unidade entity);
        IEnumerable<Unidade> Selecionar();
        Unidade SelecionarPorId(int id);
        Unidade SelecionarPorNome(string nome);
        void Validacoes(Unidade entity);
    }
}