﻿using Dominio;
using Dominio.dto;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class MentorSquadNegocio : IMentorSquadNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IMentorSquadRepositorio _mentorSquadRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public MentorSquadNegocio(IMentorSquadRepositorio mentorSquadRepositorio)
        {
            _mentorSquadRepositorio = mentorSquadRepositorio;
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
        /// Seleciona um membro do Database.
        /// </summary>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public IEnumerable<MentorSquadDto> SelecionarSquads()
        {
            var obj = _mentorSquadRepositorio.SelecionarSquads();

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
