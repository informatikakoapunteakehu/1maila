with Ada.Text_Io, Datos;

with Crear_Lista_Vacia, Esc, Insertar_al_Final;

use Datos;
use Ada.Text_Io;


procedure Prueba_Insertar_al_Final is 


   Lis : Lista; -- variable del programa principal   

   

   procedure Pedir_Return is 
   begin
      Put_Line("pulsa return para continuar ");
      Skip_Line;
   end Pedir_Return;

begin -- programa principal
   -- Casos de prueba:
   --   1. Lista vacia. 
   --   2. Lista no vacia. 
 
   
   Put_Line("Programa de prueba: ");
   Put_Line("*********");


   Crear_Lista_Vacia(Lis);
   Put_Line("Caso de prueba 1: Lista vacia ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Insertar_al_Final(Lis, 4);
   Put_Line("Ahora deberia escribir <4>: ");
   Esc(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_al_Final(Lis, 4);
   Put_Line("Caso de prueba 2.1: Lista no vacia ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Insertar_al_Final(Lis, 2);
   Put_Line("Ahora deberia escribir <4, 2>: ");
   Esc(Lis);
   New_Line;
   New_Line;
   Pedir_Return;

   Crear_Lista_Vacia(Lis);
   Insertar_al_Final(Lis, 4);
   Insertar_al_Final(Lis, 6);
   Put_Line("Caso de prueba 2.2: Lista no vacia ");
   Put_Line("La lista inicial contiene ");
   Esc(Lis);
   Insertar_al_Final(Lis, 2);
   Put_Line("Ahora deberia escribir <4, 6, 2>: ");
   Esc(Lis);
   New_Line;
   New_Line;
   Pedir_Return;


   Put_Line("Se acabo la prueba. Agur ");
end Prueba_Insertar_al_Final;


