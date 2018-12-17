﻿using Dominio;
using Dominio.Excecoes;
using Negocio.Abstracao;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Text;

namespace Negocio
{
    public class SquadNegocio : INegocioBase<Squad>
    {
        private readonly SquadRepositorio _squadRepositorio;

        public SquadNegocio()
        {
            _squadRepositorio = new SquadRepositorio();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Squad> Selecionar()
        {
            var lista = _squadRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Squad SelecionarPorId(int id)
        {
            var obj = _squadRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Squad SelecionarPorDescricao(string desc)
        {
            var obj = _squadRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Squad entity)
        {
            var UserExistente = _squadRepositorio.SelecionarPorDescricao(entity.Nome);

            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado a SQUAD {UserExistente.Nome}, cadastrado!");
            }

            return _squadRepositorio.Inserir(entity);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Squad Alterar(int id, Squad entity)
        {
            entity.ID = id;
            _squadRepositorio.Alterar(entity);

            return _squadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _squadRepositorio.SelecionarPorId(id);

            _squadRepositorio.Deletar(obj.ID);
        }
    }
}
