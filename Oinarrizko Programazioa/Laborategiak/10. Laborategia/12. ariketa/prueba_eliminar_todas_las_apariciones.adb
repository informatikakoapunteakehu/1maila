with Ada.Text_Io, Datos;

with Crear_Lista_Vacia, Insertar_Al_Comienzo, Escribir,
   Eliminar_Todas_Las_Apariciones;

use Datos;
use Ada.Text_Io;


procedure Prueba_Eliminar_Todas_Las_Apariciones is 


   Lis : Lista; -- variable del programa principal  



   procedure Pedir_Return is 
   begin
      Put_Line("pulsa return para continuar ");
      Skip_Line;
   end Pedir_Return;

begin -- programa principal
   -- Casos de prueba:
   --   1. Eliminar en la lista vacia. Resultado: lista vacia
   --   2. Eliminar en lista no vacia.
   --      2.1 Un elemento que no esta en la lista. Resultado: lista inicial
   --      2.2 Eliminar un elemento que si esta en la lista
   --           2.2.1 Lista de un solo elemento. Resultado: lista vacia
   --           2.2.2 Lista de mas de un elemento. Eliminar en el medio.
   --           2.2.3 Lista de mas de un elemento. Eliminar el ultimo.
   --           2.2.4 Lista de mas de un elemento. El valor aparece en 
   --                                              sitios diferentes.
   --           2.2.5 Lista de mas de un elemento. Todos los elementos 
   --                                              iguales.

   Put_Line("Programa de prueba: ");
   Put_Line("*********");

   Crear_Lista_Vacia(Lis);
   Put_Line("Caso de prueba 1: Eliminar en la lista vacia ");
   Eliminar_Todas_Las_Apariciones(Lis, 5);
   Put_Line("Ahora deberia escribir la lista vacia: ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 4);
   Insertar_Al_Comienzo(Lis, 9);
   Insertar_Al_Comienzo(Lis, 7);
   Insertar_Al_Comienzo(Lis, 5);
   Put_Line("Caso de prueba 2.1: valor que no esta en la lista.");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 8)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 8);
   Put_Line("Ahora deberia escribir la lista <5, 7, 9, 4> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 8);
   Put("Caso de prueba 2.2.1: Valor que si esta en la lista. ");
   Put_Line("Lista de un solo elemento");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 8)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 8);
   Put_Line("Ahora deberia escribir la lista vacia: ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 8);
   Insertar_Al_Comienzo(Lis, 10);
   Insertar_Al_Comienzo(Lis, 12);
   Put_Line(
      "Caso de prueba 2.2.2: Valor que si esta en la lista.");
   Put_Line(
      "    Lista con mas de un elemento. Eliminar en medio.");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 10)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 10);
   Put_Line("Ahora deberia escribir la lista <12, 8> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 12);
   Insertar_Al_Comienzo(Lis, 10);
   Insertar_Al_Comienzo(Lis, 8);
   Put_Line(
      "Caso de prueba 2.2.3: Valor que si esta en la lista.");
   Put_Line(
      "   Lista con mas de un elemento. Eliminar el ultimo.");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 12)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 12);
   Put_Line("Ahora deberia escribir la lista <8, 10> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 8);
   Insertar_Al_Comienzo(Lis, 10);
   Insertar_Al_Comienzo(Lis, 12);
   Insertar_Al_Comienzo(Lis, 12);
   Insertar_Al_Comienzo(Lis, 7);
   Insertar_Al_Comienzo(Lis, 9);
   Insertar_Al_Comienzo(Lis, 9);
   Insertar_Al_Comienzo(Lis, 12);
   Put_Line(
      "Caso de prueba 2.2.4: Valor que si esta en la lista.");
   Put_Line("    Lista con mas de un elemento. Valor repetido");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 12)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 12);
   Put_Line("Ahora deberia escribir la lista <9, 9, 7, 10, 8> ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_Al_Comienzo(Lis, 12);
   Insertar_Al_Comienzo(Lis, 12);
   Insertar_Al_Comienzo(Lis, 12);
   Put_Line(
      "Caso de prueba 2.2.5: Valor que si esta en la lista.");
   Put("   Lista con mas de un elemento. ");
   Put_Line("  Todos los elementos de la lista iguales");
   Put_Line("Llamada a: Eliminar_Todas_Las_Apariciones(Lis, 12)");
   Put_Line("La lista inicial contiene ");
   Escribir(Lis);
   Eliminar_Todas_Las_Apariciones(Lis, 12);
   Put_Line("Ahora deberia escribir la lista vacia: ");
   Escribir(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Put_Line("Se acabo la prueba. Agur ");
end Prueba_Eliminar_Todas_Las_Apariciones;


