with pedir_y_comprobar_dato,calcular_primeros_factores_primos,calcular_siguientes_factores_primos,Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

procedure calcular_factores_primos (Num: in integer) is 
--Especificaci�n
--Entrada: Un n�mero entero
--Pre: el valor_entrada del n�mero ser� par >2
--Salida: varios pares de n�meros enteros
--Post: cada par cumplir� valor_salida1 y valor_salida2 ser�n y cumplir�n que valor_salida1+ valor_salida2 = valor_entrada

   
   Factor_primo1,factor_primo2:integer;
begin
   Calcular_Primeros_Factores_Primos(Num,Factor_Primo1,Factor_Primo2);
   loop exit when  Factor_Primo1>Num/2;
      Put("los factores son: ");   
      Put(factor_primo1);
      put(factor_primo2);
      calcular_siguientes_factores_primos(Num,Factor_Primo1,Factor_Primo2);
      New_Line;
   end loop;
end calcular_factores_primos;
