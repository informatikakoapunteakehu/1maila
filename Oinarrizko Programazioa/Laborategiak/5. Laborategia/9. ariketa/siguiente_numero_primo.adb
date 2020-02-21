with es_primo;

with Ada.integer_text_IO;
use Ada.Integer_Text_Io;

function siguiente_numero_primo (N: in integer) return integer is 
--Especificaci�n
--Entrada: Un n�mero entero
--Pre: el valor_entrada del n�mero ser� >0
--Salida: 1 n�meros enteros
--Post: valor_salida ser� el siguiente valor primo tal que valor_salida > valor_entrada y el rango de n�meros entre [valor_entrada .. valor_salida] no contiene otro n�mero primo

   
   siguiente_primo:Integer;
    primo:boolean:=false;
begin
   siguiente_primo:=n+1;
   
   loop exit when   primo=true;
        if es_primo(siguiente_primo)=true then
            primo:=true;
        else
            siguiente_primo:=siguiente_primo+1; 
        end if;
       
   end loop;
   return siguiente_primo;
   
end siguiente_numero_primo;
