with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

with Defs_Lab;
use Defs_Lab;


procedure idatzi_lista ( L : in Osokoen_zerrenda ) is 
   --Pre:	  
   --Post:  se han escrito en la secuencia de salida los valores de L
   --          desde 1 hasta L.cont

begin
   for I in 1 .. L.kopurua loop
      Put(L.zenbakiak(I), width => 3);
   end loop;
   New_Line;

end idatzi_lista;
