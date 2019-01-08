using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface IPapelNegocio
    {
        Papel Alterar(int id, Papel entity);
        void Deletar(int id);
        int Inserir(Papel entity);
        IEnumerable<Papel> Selecionar();
        Papel SelecionarPorDescricao(string desc);
        Papel SelecionarPorId(int id);
        void Validacoes(Papel entity);
    }
}