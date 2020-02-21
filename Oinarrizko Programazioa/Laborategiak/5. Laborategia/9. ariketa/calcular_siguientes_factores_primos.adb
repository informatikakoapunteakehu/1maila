with Es_Primo,Siguiente_Numero_Primo;

procedure calcular_siguientes_factores_primos (N:in integer; Primo1: in out integer; Primo2:out integer) is 
--Especificaci�n
--Entrada: 2 n�meros enteros
--Pre: el valor_entrada1 del n�mero ser� par >2
--valor_entrada2 ser� primo
--Salida: 2 n�meros enteros
--Post: valor_salida1 y valor_salida2 ser�n y cumplir�n que valor_salida1+ valor_salida2 = valor_entrada y valor_salida1 > valor_entrada2
    
begin
   primo1:=Siguiente_Numero_Primo(Primo1);
   Primo2:=N-Primo1;
   loop exit when  es_primo(primo2)=true;
      Primo1:=Siguiente_Numero_Primo(Primo1);
      Primo2:=N-Primo1; 
   end loop;
end calcular_siguientes_factores_primos;
