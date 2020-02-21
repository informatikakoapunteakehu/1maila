with Datos, Ada.Text_Io;
use Datos, Ada.Text_Io;

with Insertar_en_Lista_Ordenada, escribir, crear_lista_vacia;

procedure Prueba_Insertar_en_Lista_Ordenada is 

Lis: Lista;

   procedure Pedir_Return is 
   begin
      Put_Line("pulsa return para continuar ");
      Skip_Line;
   end Pedir_Return;
   
begin
   Put_Line("Programa de prueba: ");
   Put_Line("*******************");

   Put_Line("Prueba de Crear_Lista_Vacia ");
   Crear_Lista_Vacia(Lis);
   Put_Line("Ahora deberia escribir la lista vacia: ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("Prueba de Insertar_Ordenado ");
   Put_Line("Primer caso de prueba: insertar en lista vacia ");
   Insertar_en_Lista_Ordenada(Lis, 5);
   Put_Line("Ahora deberia escribir la lista <5>: ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("prueba de Insertar_Ordenado ");
   Put_Line("Segundo caso de prueba: insertar al final ");
   Insertar_en_Lista_Ordenada(Lis, 9);
   Put_Line("Ahora deberia escribir la lista <5, 9> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("prueba de Insertar_Ordenado ");
   Put_Line("Tercer caso de prueba: insertar al comienzo ");
   Insertar_en_Lista_Ordenada(Lis, 3);
   Put_Line("Ahora deberia escribir la lista <3, 5, 9> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("prueba de Insertar_Ordenado ");
   Put_Line("Cuarto caso de prueba: insertar en medio ");
   Insertar_en_Lista_Ordenada(Lis, 7);
   Put_Line("Ahora deberia escribir la lista <3, 5, 7, 9> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;


   Put_Line("prueba de Insertar_Ordenado ");
   Put_Line("Quinto caso de prueba: insertar alfinal ");
   Insertar_en_Lista_Ordenada(Lis, 15);
   Put_Line("Ahora deberia escribir la lista <3, 5, 7, 9, 15> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("Se ha acabado la prueba.Agur ");
end Prueba_Insertar_en_Lista_Ordenada;
