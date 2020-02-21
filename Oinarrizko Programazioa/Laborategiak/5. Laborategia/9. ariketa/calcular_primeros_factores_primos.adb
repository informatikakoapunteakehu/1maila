with Es_Primo,Siguiente_Numero_Primo;


procedure calcular_primeros_factores_primos (Num: in integer; Primo1,Primo2:out integer) is 
--Especificacion
--Entrada: 1 numero entero
--Pre: el valor_entrada1 del numero sera par >2
--valor_entrada2 sera primo
--Salida: 2 numeros enteros
--Post: valor_salida1 y valor_salida2 seran y cumpliran que valor_salida1+ valor_salida2 = valor_entrada y valor_salida1 > valor_entrada2

    
begin
   Primo1:=2;
   Primo2:=Num-Primo1;
   loop exit when es_primo(primo2)=true;
      Primo1:=Siguiente_Numero_Primo(Primo1);
      Primo2:=Num-Primo1;
      
   end loop;
end calcular_primeros_factores_primos;
