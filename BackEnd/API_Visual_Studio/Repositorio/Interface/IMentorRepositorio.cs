using System.Collections.Generic;
using Dominio;
using Dominio.dto;

namespace Repositorio.Interface
{
    public interface IMentorRepositorio
    {
        void Deletar(int id);
        int Inserir(Mentor entity);
        IEnumerable<Mentor> Selecionar();
        IEnumerable<MentorDto> SelecionarAtivos();
        Mentor SelecionarPorId(int id);
    }
}