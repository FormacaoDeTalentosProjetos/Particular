using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Repositorio.Interface
{
    public interface IMentorTriboRepositorio
    {
        void Alterar(MentorTribo entity);
        void Deletar(int id);
        int Inserir(int IdTribo, int IdUser);
        IEnumerable<MentorTribo> Selecionar();
        MentorTribo SelecionarPorId(int id);
        MentorTribo SelecionarTribosPorId(int id);
    }
}