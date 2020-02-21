-- Author: Aitziber
with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

with es_medio;

procedure prueba_es_medio is

    package Boolean_E_S is new Enumeration_Io(Boolean);
    use Boolean_E_S;
    -- esto sirve para leer y escribir valores de tipo Boolean
    
    
    
begin
put_line("Primera prueba: es_medio(6) debería devolver true y devuelve: ");
put(es_medio(6));
 
put_line("Segunda prueba: es_medio(8) debería devolver false y devuelve: ");
put(es_medio(8));
    
           
end prueba_es_medio;
