-- Author: Aitziber
with suma_inferiores;

function suma_superiores(n_sup: in integer) return integer is
   n,n_inf:integer;
begin
   n:=n_sup+1;
   n_inf:=suma_inferiores(n_sup);
   loop exit when ( n_inf <= n);
        n:=(n+(n+1));
   end loop;
    return n;            
end suma_superiores;
