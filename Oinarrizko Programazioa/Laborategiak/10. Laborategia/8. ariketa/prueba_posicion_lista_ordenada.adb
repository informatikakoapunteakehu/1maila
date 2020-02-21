with Ada.Text_Io, Ada.Integer_Text_Io, Datos;

with Crear_Lista_Vacia, Ins, Esc, Posicion_Lista_Ordenada;

use Datos;
use Ada.Text_Io, Ada.Integer_Text_Io;


procedure Prueba_Posicion_Lista_Ordenada is 


   package Boolean_E_S is new Enumeration_Io(Boolean);
   use Boolean_E_S;
   -- esto sirve para leer y escribir valores de tipo Boolean


   Lis : Lista; -- variable del programa principal   
   
   Esta: Boolean;
   Pos: Natural;
   

   procedure Pedir_Return is 
   begin
      Put_Line("pulsa return para continuar ");
      Skip_Line;
      New_Line(3);
   end Pedir_Return;

begin -- programa principal
   -- Casos de prueba:
   --   1. Lista vacia. Resultado: uno
   --   2. Lista no vacia. Lista de un elemento 
   --         2.1. El elemento buscado si esta
   --         2.2. El elemento buscado no esta. Se debe meter al comienzo
   --         2.3. El elemento buscado no esta. Se debe meter al final
   --   3. Lista no vacia. Varios elementos
   --         3.1. El buscado al comienzo
   --         3.2. El buscado en medio
   --         3.3. El buscado al final
   --         3.4. El buscado no esta. Se debe meter al comienzo
   --         3.5. El buscado no esta. Se debe meter en medio 
   --         3.6. El buscado no esta. Se debe meter al final
   
   Put_Line("Programa de prueba: ");
   Put_Line("*********");

   Crear_Lista_Vacia(Lis);
   Put_Line("Caso de prueba 1: Lista vacia ");
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 4, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion uno: ");
   Posicion_Lista_Ordenada(Lis, 4, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 4);
   Put_Line("Caso de prueba 2.1: lista de un solo elemento. El elemento buscado si esta ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 4, Esta, Pos)");
   Put_Line("Ahora deberia escribir que si esta, y en la posicion uno: ");
   Posicion_Lista_Ordenada(Lis, 4, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 4);
   Put_Line("Caso de prueba 2.2: lista de un solo elemento. El elemento buscado no esta ");
   Put_Line("Se debe insertar al comienzo ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 2, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion uno: ");
   Posicion_Lista_Ordenada(Lis, 2, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 4);
   Put_Line("Caso de prueba 2.3: lista de un solo elemento. El elemento buscado no esta ");
   Put_Line("Se debe insertar al final ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 6, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion 2: ");
   Posicion_Lista_Ordenada(Lis, 6, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;


   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.1: lista de varios elementos. El elemento buscado al comienzo ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 3, Esta, Pos)");
   Put_Line("Ahora deberia escribir que si esta, y en la posicion uno: ");
   Posicion_Lista_Ordenada(Lis, 3, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.2: lista de varios elementos. El elemento buscado en medio ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 7, Esta, Pos)");
   Put_Line("Ahora deberia escribir que si esta, y en la posicion 3: ");
   Posicion_Lista_Ordenada(Lis, 7, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.3: lista de varios elementos. El elemento buscado al final ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 9, Esta, Pos)");
   Put_Line("Ahora deberia escribir que si esta, y en la posicion 4: ");
   Posicion_Lista_Ordenada(Lis, 9, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;


   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.4: lista de varios elementos. El elemento buscado no esta ");
   Put_Line("  Se debe insertar al comienzo ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 2, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion uno: ");
   Posicion_Lista_Ordenada(Lis, 2, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.5: lista de varios elementos. El elemento buscado no esta ");
   Put_Line("  Se debe insertar en medio ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 6, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion 3: ");
   Posicion_Lista_Ordenada(Lis, 6, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Ins(Lis, 9);
   Ins(Lis, 7);
   Ins(Lis, 5);
   Ins(Lis, 3);
   Put_Line("Caso de prueba 3.6: lista de varios elementos. El elemento buscado no esta ");
   Put_Line("  Se debe insertar al final ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Put_Line("Llamada a : Posicion_Lista_Ordenada(Lis, 12, Esta, Pos)");
   Put_Line("Ahora deberia escribir que no esta, y en la posicion 5: ");
   Posicion_Lista_Ordenada(Lis, 12, Esta, Pos);
   Put("Esta: "); Put(Esta); Put(" Posicion: "); Put(Pos);
   New_Line;
   New_Line;
   Pedir_Return;



   Put_Line("Se acabo la prueba. Agur ");
end Prueba_Posicion_Lista_Ordenada;


