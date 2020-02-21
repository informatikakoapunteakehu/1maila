with inverso;

function es_capicua (n: in integer) return boolean is
   -- pre: N >= 1
   -- post: el resultado True si N es capicua y false si no
    
   N_Inverso: integer; 
   capicua: boolean; 

    
begin
    capicua:=False; 
    N_Inverso:=inverso(n);

    if(n - N_Inverso = 0) then
        capicua:=True;
    end if;
    
    return(capicua);
end es_capicua;