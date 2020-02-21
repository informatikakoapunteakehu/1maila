with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_IO, Ada.Integer_text_IO;


function es_primo (N: in integer) return boolean is 
--Especificación
--Entrada: Un número entero
--Pre: el valor_entrada del número >=1
--Salida: un booleano
--Post: valor_salida1 será true si valor_entrada es primo y false si valor_entrada no es primo

   posible_Divisor:Integer;
   primo:boolean;

begin
    Primo:=True;
    posible_divisor:=2;
    loop exit when  primo=false or posible_divisor=n;                
       if n rem posible_divisor=0 then primo:=false;
       else
        posible_divisor:=posible_divisor+1; 
       end if;
    
   end loop;
   
   return(primo);
end es_primo;
