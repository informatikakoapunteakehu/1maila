with defs_lab;
use defs_lab;

procedure minimoaren_posizioa_topatu (hasiera : in Integer; L: in Osokoen_zerrenda; Pos_Min: out Integer) is 
    min: integer:=integer'last;
    aux: integer;
       
begin 
    aux:= hasiera;
    loop exit when aux > L.kopurua;
        if min > L.zenbakiak(aux) then
            Pos_Min:= aux;
            min := L.zenbakiak(aux);
        end if;
        aux := aux + 1;
    end loop;
end minimoaren_posizioa_topatu;

