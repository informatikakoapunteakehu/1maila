with defs_lab;
use defs_lab;

with minimoaren_posizioa_topatu;

procedure ordenatu_hautatuz (L : in out osokoen_zerrenda ) is 
   -- pre: 
   -- post: L contiene los valores que tenía inicialmente, ordenados
   --            de menor a mayor 
   Pos_Min, aux, aux2 : Integer;  
begin
    aux:= 1;
    loop exit when aux >= L.kopurua;
        minimoaren_posizioa_topatu(aux, L, Pos_Min);
        aux2:= L.zenbakiak(aux);
        L.zenbakiak(aux) := L.zenbakiak(Pos_Min);
        L.zenbakiak(Pos_Min):= aux2;
        aux := aux + 1;
     end loop;
end ordenatu_hautatuz;

