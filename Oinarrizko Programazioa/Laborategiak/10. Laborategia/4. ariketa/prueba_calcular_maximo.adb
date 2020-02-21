with Ada.Text_Io, Ada.Integer_Text_Io, Datos;

with Crear_Lista_Vacia, Ins, Esc, Calcular_Maximo_y_Posicion;

use Datos;
use Ada.Text_Io, Ada.Integer_Text_Io;


procedure Prueba_Calcular_Maximo is 


   Lis : Lista; -- variable del programa principal   
   Maximo, Posicion: Integer;
   

   procedure Pedir_Return is 
   begin
      Put_Line("pulsa return para continuar ");
      Skip_Line;
   end Pedir_Return;

begin -- programa principal
   -- Casos de prueba:
   --   1. Lista vacia. Resultado: cero
   --   2. Lista no vacia. Lista de un elemento
   --   3. Lista no vacia. Varios elementos
   --         3.1. El maximo al comienzo
   --         3.2. El maximo en medio
   --         3.3. El maximo al final
   
   Put_Line("Programa de prueba: ");
   Put_Line("*********");

   Crear_Lista_Vacia(Lis);
   Put_Line("Caso de prueba 1: Lista vacia ");
   Put_Line("Ahora deberia escribir cero: ");
   Calcular_Maximo_y_Posicion(Lis, Maximo, Posicion);
   Put("Maximo: "); Put(Maximo); Put(" Posicion: "); Put(Posicion);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 4);
   Put_Line("Caso de prueba 2: lista de un solo elemento.");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Ahora deberia escribir 4, 1: ");
   Calcular_Maximo_y_Posicion(Lis, Maximo, Posicion);
   Put("Maximo: "); Put(Maximo); Put(" Posicion: "); Put(Posicion);
   New_Line;
   New_Line;
   Pedir_Return;


   Crear_Lista_Vacia(Lis);
   Ins(Lis, 6);
   Ins(Lis, 8);
   Ins(Lis, 9);
   Ins(Lis, 10);
   Put_Line("Caso de prueba 3.1: lista de varios elementos. Maximo al comienzo");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Ahora deberia escribir 10, 1: ");
   Calcular_Maximo_y_Posicion(Lis, Maximo, Posicion);
   Put("Maximo: "); Put(Maximo); Put(" Posicion: "); Put(Posicion);
   New_Line;
   New_Line;
   Pedir_Return;


   Crear_Lista_Vacia(Lis);
   Ins(Lis, 8);
   Ins(Lis, 9);
   Ins(Lis, 10);
   Ins(Lis, 6);
   Put_Line("Caso de prueba 3.2: lista de varios elementos. Maximo en medio");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Ahora deberia escribir 10, 2: ");
   Calcular_Maximo_y_Posicion(Lis, Maximo, Posicion);
   Put("Maximo: "); Put(Maximo); Put(" Posicion: "); Put(Posicion);
   New_Line;
   New_Line;
   Pedir_Return;
   

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 10);
   Ins(Lis, 6);
   Ins(Lis, 8);
   Ins(Lis, 9);
   Put_Line("Caso de prueba 3.3: lista de varios elementos. Maximo al final");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Ahora deberia escribir 10, 4: ");
   Calcular_Maximo_y_Posicion(Lis, Maximo, Posicion);
   Put("Maximo: "); Put(Maximo); Put(" Posicion: "); Put(Posicion);
   New_Line;
   New_Line;
   Pedir_Return;


   Put_Line("Se acabo la prueba. Agur ");
end Prueba_Calcular_Maximo;


