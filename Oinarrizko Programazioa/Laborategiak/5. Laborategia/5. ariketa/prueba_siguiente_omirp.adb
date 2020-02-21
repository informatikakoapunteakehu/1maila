-- Author: EUITI
with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

with siguiente_omirp;

procedure prueba_siguiente_omirp is
--algunos ejempos de numeros omirp
---  107/701 - 113/311 - 
---  149/941 - 157/751 - 167/761 - 179/971
---  199/991 - 337/733 - 347/743 - 359/953 - 389/983
---  709/907 - 739/937 - 769/967
num_omirp:integer;
zen1:integer;
    
begin
    put_line("Sartu zenbaki oso bat, eta programa honek hurrengo zenbaki omirp topatuko du: "); 
    get(zen1);
    num_omirp:=siguiente_omirp(zen1);
    put("Hurrengo zenbaki omirp: ");
    put(num_omirp);
    put_line(" da.");
end prueba_siguiente_omirp;
