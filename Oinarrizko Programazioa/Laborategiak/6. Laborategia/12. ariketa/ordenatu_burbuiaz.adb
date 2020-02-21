with defs_lab;
use defs_lab;



procedure ordenatu_burbuiaz (t: in out osokoen_zerrenda) is 


   aux, num_pasatakoak, i: Integer;  
   ez_ordenatua: boolean;
begin
    num_pasatakoak:=1;
    loop exit when ((num_pasatakoak > t.kopurua-1) or (ez_ordenatua = false));
        i:=1;
        ez_ordenatua:=false;
        loop exit when i > t.kopurua-1; --5. Elementua ez atzitzeko, ez baitago
            if t.zenbakiak(i) > t.zenbakiak(i+1) then ---aldatu
                aux:=t.zenbakiak(i);
                t.zenbakiak(i):=t.zenbakiak(i+1);
                t.zenbakiak(i+1):=aux;
                ez_ordenatua:=true;
            end if;
            i:=i+1;
        end loop;
        num_pasatakoak:= num_pasatakoak+1;
    end loop;
end ordenatu_burbuiaz;

