using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Repositorio.Interface
{
    public interface IMentorTriboRepositorio
    {
        void Alterar(MentorTribo entity);
        void Deletar(int id);
        int Inserir(MentorTribo entity);
        IEnumerable<MentorTribo> Selecionar();
        MentorTribo SelecionarPorId(int id);
        IEnumerable<MentorTriboDto> SelecionarTribos();
    }
}