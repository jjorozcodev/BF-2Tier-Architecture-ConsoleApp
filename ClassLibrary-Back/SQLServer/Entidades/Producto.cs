namespace ClassLibrary_Back.SQLServer.Entidades
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public float PrecioUnitario { get; set; }
        public bool Activo { get; set; }
    }
}
