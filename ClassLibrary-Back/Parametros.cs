using System.Configuration;

namespace ClassLibrary_Back
{
    public class Parametros
    {
        private static string tipoServidor = "";
        

        public static void EstablecerTipoServidor(string tipoServer)
        {
            tipoServidor = tipoServer;
        }

        public static string RecuperarTipoServidor()
        {
            return tipoServidor;
        }

        public static string RecuperarParametro(string parametro)
        {
            return ConfigurationManager.AppSettings.Get(parametro); 
        }
    }
}
