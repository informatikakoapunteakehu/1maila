-- Author: EUITI
with ordenar_dos_numeros;
procedure ordenar_tres_numeros(n1,n2,n3: in out integer) is
---entrada: 3 numeros
    --Pre: no seran iguales entre si
---salida: 3 numeros
   ---Post: estaran ordenados de menor a mayor
begin
    ordenar_dos_numeros(n1,n2);
    ordenar_dos_numeros(n1,n3);
    ordenar_dos_numeros(n2,n3);
end ordenar_tres_numeros;
