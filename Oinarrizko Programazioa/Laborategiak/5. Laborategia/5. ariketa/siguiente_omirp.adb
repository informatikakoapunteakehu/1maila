-- Author: Aitziber
with es_omirp;
function siguiente_omirp(n: in integer) return integer is
n_aux:integer;
begin
    n_aux:=n+1;
    loop exit when es_omirp(n_aux)=true;
        n_aux:=n_aux+1;
    end loop;
   return n_aux; 
end siguiente_omirp;
