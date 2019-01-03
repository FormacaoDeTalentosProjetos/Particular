using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMentorSquadNegocio
    {
        MentorSquad Alterar(int id, MentorSquad entity);
        void Deletar(int id);
        int Inserir(MentorSquad entity);
        IEnumerable<MentorSquad> Selecionar();
        MentorSquad SelecionarPorId(int id);
        IEnumerable<MentorSquadDto> SelecionarSquads();
    }
}