

procedure obtener_tres_cifras(n: in integer; n1,n2,n3: out integer) is
---pre:-
---post: imprimirá por pantalla aquellos numeros de 3 cifras que sean narcisistas
begin
  n1:=n/100;
  n2:=n/10 - (n/100 * 10);
  n3:=n - (n/10 * 10);    
end obtener_tres_cifras;