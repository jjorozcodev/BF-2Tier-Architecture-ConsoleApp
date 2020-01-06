using System.Data.SqlClient;

namespace ClassLibrary_Back.SQLServer
{
    internal class Conexion
    {
        private static SqlConnection con = null;

        private static string servidor = "";
        private static string baseDatos = "";
        private static string usuario = "";
        private static string clave = "";

        internal static void RecuperarParametrosConexion()
        {
            servidor = Parametros.RecuperarParametro("Servidor");
            if(Parametros.RecuperarTipoServidor() == "local")
            {
                baseDatos = Parametros.RecuperarParametro("BDLocal");
            }

            if (Parametros.RecuperarTipoServidor() == "externo")
            {
                baseDatos = Parametros.RecuperarParametro("BDExterno");
            }

            usuario = Parametros.RecuperarParametro("UserId");
            clave = Parametros.RecuperarParametro("Password");
        }

        internal static SqlConnection Abrir()
        {
            if (con == null)
                con = new SqlConnection();
            RecuperarParametrosConexion();
            con.ConnectionString = string.Format("Server={0};Database={1};User Id={2};Password={3};", servidor, baseDatos, usuario, clave);
            con.Open();
            return con;
        }
    }
}
