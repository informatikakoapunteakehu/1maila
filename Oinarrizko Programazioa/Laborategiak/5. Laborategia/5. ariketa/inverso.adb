-- Author: EUITI

function inverso(n: in integer) return integer is
    n_aux,n_inverso,resto:integer;
begin
    n_aux:=n;
    n_inverso:=0;
    loop exit when n_aux=0;
     resto:=n_aux rem 10;
     n_inverso:=n_inverso*10+resto;
     n_aux:=n_aux/10;
    end loop;
    
    
    return n_inverso;
end inverso;
