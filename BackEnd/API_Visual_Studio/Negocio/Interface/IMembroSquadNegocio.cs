using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Negocio.Interface
{
    public interface IMembroSquadNegocio
    {
        MembroSquad Alterar(int id, MembroSquad entity);
        void Deletar(int id);
        int Inserir(MembroSquad entity);
        IEnumerable<MembroSquad> Selecionar();
        MembroSquad SelecionarPorId(int id);
        IEnumerable<MembroSquadDto> SelecionarPorIdSquad(int id);
        void ValidacoesMembroSquad(MembroSquad entity);
    }
}