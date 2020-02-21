-- Author: EUITI
with es_primo;
with inverso;

function es_omirp (n: in integer) return boolean is
    -- pre: N >= 1
    -- post: el resultado True si N es capicua y false si no
        
    N_Inverso: integer; 
    omirp:boolean:=false;
    begin
    
    if es_primo(n) then

        N_Inverso:=inverso(n);
        if N_inverso/=n then
            if es_primo(n_inverso) then
                omirp:=true;        
            end if;
        end if;
        
    end if;
    
    return omirp;
end es_omirp;