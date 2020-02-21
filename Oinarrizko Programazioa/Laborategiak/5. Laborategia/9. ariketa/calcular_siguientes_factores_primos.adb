with Es_Primo,Siguiente_Numero_Primo;

procedure calcular_siguientes_factores_primos (N:in integer; Primo1: in out integer; Primo2:out integer) is 
--Especificación
--Entrada: 2 números enteros
--Pre: el valor_entrada1 del número será par >2
--valor_entrada2 será primo
--Salida: 2 números enteros
--Post: valor_salida1 y valor_salida2 serán y cumplirán que valor_salida1+ valor_salida2 = valor_entrada y valor_salida1 > valor_entrada2
    
begin
   primo1:=Siguiente_Numero_Primo(Primo1);
   Primo2:=N-Primo1;
   loop exit when  es_primo(primo2)=true;
      Primo1:=Siguiente_Numero_Primo(Primo1);
      Primo2:=N-Primo1; 
   end loop;
end calcular_siguientes_factores_primos;
