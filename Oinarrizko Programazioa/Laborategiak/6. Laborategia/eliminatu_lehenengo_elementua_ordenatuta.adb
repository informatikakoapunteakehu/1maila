with bektore_eta_matrizeak,Defs_lab;
use bektore_eta_matrizeak,Defs_lab;

function eliminatu_lehenengo_elementua_ordenatuta (zerrenda: in Osokoen_zerrenda) return Osokoen_zerrenda is
    ezabatuta: Osokoen_zerrenda;
    kont: integer;
   -- aurre: erregistro barruko bektoreak behintzat elementu bat izango du, 
   -- eta elementuak txikitik handira ordenatuta egongo dira
   -- post: lehenengo elementua ezabatuko da
begin
    kont := 0;
    ezabatuta.kopurua := (zerrenda.kopurua - 1);
    
    loop exit when (kont = (zerrenda.kopurua - 1)) or (zerrenda.kopurua = 1);
        kont := kont + 1;
        ezabatuta.zenbakiak(kont) := zerrenda.zenbakiak(kont + 1);
    end loop;
    return ezabatuta;
end eliminatu_lehenengo_elementua_ordenatuta;

