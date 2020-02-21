-- Author: Aitziber
with suma_superiores, suma_inferiores;

function es_medio(n: in integer) return boolean is
n_inf,n_sup: integer;
result: boolean;
begin
    n_inf:=suma_inferiores(n);
    n_sup:=suma_superiores(n);
    if n_inf = n_sup then
        result:= TRUE;
    else
        result:= FALSE;
    end if;
    return result;  
end es_medio;
