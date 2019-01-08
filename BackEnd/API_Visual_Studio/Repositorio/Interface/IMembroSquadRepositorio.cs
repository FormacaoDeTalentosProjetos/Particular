using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Repositorio.Interface
{
    public interface IMembroSquadRepositorio
    {
        void Alterar(MembroSquad entity);
        void Deletar(int id);
        int Inserir(MembroSquad entity);
        IEnumerable<MembroSquad> Selecionar();
        MembroSquad SelecionarPorId(int id);
        IEnumerable<MembroSquadDto> SelecionarPorIdSquad(int idSquad);
        MembroSquad SelecionarPorIdUser(int idUser);
    }
}