-- Author: Aitziber
procedure intercambiar(n1,n2: in out integer) is
    aux: integer;
begin

    if (n1 > n2) then
        aux:=n1;
        n1:=n2;
        n2:=aux;
    end if;
    
end intercambiar;
