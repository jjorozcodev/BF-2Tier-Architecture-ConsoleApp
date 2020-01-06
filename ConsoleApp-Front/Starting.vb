Module Starting
    Public Sub Main()
        Console.WriteLine("Starting...")
        Try
            ClassLibrary_Back.Operaciones.Conectar()
            Console.WriteLine("Ok")
        Catch ex As Exception
            Console.WriteLine(ex)
        Finally
            Console.ReadKey()
        End Try
    End Sub
End Module
