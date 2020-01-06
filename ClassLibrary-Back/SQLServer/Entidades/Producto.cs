namespace ClassLibrary_Back.SQLServer.Entidades
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string CodBarras { get; set; }
        public float Precio { get; set; }
        public bool Activo { get; set; }
    }
}
