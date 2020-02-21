with Ada.Text_Io;
use Ada.Text_Io;

with es_capicua;

procedure Prueba_es_capicua is 
   -- este programa hace llamadas a la funcion capicua y es util
   -- para comprobar si su funcionamiento es correcto

   package Boolean_E_S is new Enumeration_Io(Boolean);
   use Boolean_E_S;
   -- esto sirve para leer y escribir valores de tipo Boolean

begin
   Put("Primera prueba: capicua(1) debe ser true y el resultado es ");
   Put(es_capicua(1));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;
   -- esta instrucción lee un caracter "return", es decir, sirve para
   -- esperar a que el usuario pulse return

   Put("Segunda prueba: capicua(232) debe ser true y el resultado es ");
   Put(es_capicua(232));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Tercera prueba: capicua(1234554321) debe ser true y el resultado es ");
   Put(es_capicua(1234554321));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

   Put("Cuarta prueba: capicua(1234567) debe ser false y el resultado es ");
   Put(es_capicua(1234567));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;


   Put("Quinta prueba: capicua(12321) debe ser true y el resultado es ");
   Put(es_capicua(12321));
   New_Line(3);
   Put_Line("Pulsa return para continuar");
   Skip_Line;

end Prueba_es_capicua;
