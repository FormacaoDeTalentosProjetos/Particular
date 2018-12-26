using Dominio;
using System;

namespace Negocio.Validacoes
{
    public static class CamposVazios
    {
        #region Pais
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(Pais entity)
        {
            if (string.IsNullOrWhiteSpace(entity.Nome) || string.IsNullOrWhiteSpace(entity.Sigla))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Unidade
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(Unidade entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdPais)) ||
                string.IsNullOrWhiteSpace(entity.Nome))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Nível Papel
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(NivelPapel entity)
        {
<<<<<<< Updated upstream
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.Id)) ||
                string.IsNullOrWhiteSpace(entity.Descricao))
=======
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.ID)) ||
                string.IsNullOrWhiteSpace(Convert.ToString(entity.ID)) ||
                string.IsNullOrWhiteSpace(entity.Desc))
>>>>>>> Stashed changes
            {
                return true;
            }
            return false;
        }
        #endregion

        #region MembroSquad
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(MembroSquad entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdSquad)) ||
                string.IsNullOrWhiteSpace(Convert.ToString(entity.IdUser)))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region MembroTribo
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(MembroTribo entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdTribo)) ||
                string.IsNullOrWhiteSpace(Convert.ToString(entity.IdUser)))
            {
                return true;
            }
            return false;
        }
        #endregion
    }
}