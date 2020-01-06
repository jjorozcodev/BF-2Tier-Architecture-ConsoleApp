namespace ClassLibrary_Back
{
    public class Operaciones
    {
        public static void Conectar()
        {
            try
            {
                Parametros.EstablecerTipoServidor("local");
                SQLServer.Conexion.Abrir();
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
    }
}
