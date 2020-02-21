-- Author: Aitziber
with obtener_tres_cifras;

procedure ciras_elevadas(n:in integer; n_sum: out integer) is
---Entrada:el numero en cuestion y la potencia a la que hay que elevar las cifras
---Pre: el numero contara con 3 cifras y la potencia será un numero natural >0 y <10
---Salida: un numero entero
---Post: devolverá la suma de las cifras elevadas a la potencia. 
   
   n1,n2,n3:integer;
begin
    n1:=0;
    n2:=0;
    n3:=0;
    obtener_tres_cifras(n,n1,n2,n3);
     --loop exit when n <= n_sum;
    n_sum:=n1**3+n2**3+n3**3;
       -- kont:=kont+1;
     --end loop;      
end ciras_elevadas;
