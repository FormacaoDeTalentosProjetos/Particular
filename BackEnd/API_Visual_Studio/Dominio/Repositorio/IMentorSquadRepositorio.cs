using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Dominio.Repositorio
{
    public interface IMentorSquadRepositorio
    {
        void Alterar(MentorSquad entity);
        void Deletar(int id);
        int Inserir(MentorSquad entity);
        IEnumerable<MentorSquad> Selecionar();
        MentorSquad SelecionarPorId(int id);
        IEnumerable<MentorSquadDto> SelecionarSquads();
    }
}