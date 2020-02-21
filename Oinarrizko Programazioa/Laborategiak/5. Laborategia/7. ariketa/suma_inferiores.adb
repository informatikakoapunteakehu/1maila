-- Author: Aitziber

function suma_inferiores(n_inf: in integer) return integer is
    kont,n:integer;
        
begin
    kont:=n_inf-1;
    n:=n_inf-1;
    loop exit when kont=0;
        kont:=kont-1;
        n:=n+kont;
    end loop;
    return n;
end suma_inferiores;