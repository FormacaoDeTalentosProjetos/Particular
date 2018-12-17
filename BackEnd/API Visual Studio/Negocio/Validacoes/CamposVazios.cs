using Dominio;

namespace Negocio.Validacoes
{
    public class CamposVazios
    {
        #region Pais
        /// <summary>
        /// Verifica se os campos obrigátorios não foi preenchido
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram</returns>
        public static bool Verificar(Pais entity)
        {
            if (string.IsNullOrWhiteSpace(entity.Nome) || string.IsNullOrWhiteSpace(entity.Sigla))
            {
                return true;
            }
            return false;
        }
        #endregion
    }
}
