using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class MentorSquadNegocio : INegocioBase<MentorSquad>
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly MentorSquadRepositorio _mentorSquadRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public MentorSquadNegocio()
        {
            _mentorSquadRepositorio = new MentorSquadRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<MentorSquad> Selecionar()
        {
            var lista = _mentorSquadRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public MentorSquad SelecionarPorId(int id)
        {
            var obj = _mentorSquadRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(MentorSquad entity)
        {
            return _mentorSquadRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public MentorSquad Alterar(int id, MentorSquad entity)
        {
            entity.ID = id;
            _mentorSquadRepositorio.Alterar(entity);

            return _mentorSquadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _mentorSquadRepositorio.SelecionarPorId(id);

            _mentorSquadRepositorio.Deletar(obj.ID);
        }
    }
}
