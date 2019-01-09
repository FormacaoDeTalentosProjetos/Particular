using System.Collections.Generic;
using Dominio;

namespace Negocio.Interface
{
    public interface ISquadNegocio
    {
        Squad Alterar(int id, Squad entity);
        Squad AlterarAtivoInativo(int id, Squad entity);
        void Deletar(int id);
        int Inserir(Squad entity);
        Squad SairDaTribo(int id, Squad entity);
        IEnumerable<Squad> Selecionar();
        Squad SelecionarPorDescricao(string desc);
        Squad SelecionarPorId(int id);
        IEnumerable<Squad> SelecionarPorIdTribo(int idTribo);
        IEnumerable<Squad> SquadSemTribo();
    }
}