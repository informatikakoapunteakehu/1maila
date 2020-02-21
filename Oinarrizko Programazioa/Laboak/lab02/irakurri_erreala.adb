with Ada.Float_Text_IO;
procedure Irakurri_Erreala   (N : out Float) is
   -- Aurrebaldintza:
   --    F = <r> (r, zenb. erreala)
   -- Postbaldintza:
   --    N = r
begin
   Ada.Float_Text_IO.Get(Item => N);
end Irakurri_Erreala;
