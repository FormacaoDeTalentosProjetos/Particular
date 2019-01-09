using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Repositorio.Interface
{
    public interface IMentorSquadRepositorio
    {
        void Alterar(MentorSquad entity);
        void Deletar(int id);
        int Inserir(int IdSquad, int IdMentor);
        IEnumerable<MentorSquad> Selecionar();
        MentorSquad SelecionarPorId(int id);
        MentorSquad SelecionarSquadsPorID(int id);
    }
}