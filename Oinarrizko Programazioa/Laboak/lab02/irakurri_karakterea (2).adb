with Ada.Text_IO;
procedure Irakurri_Karakterea (Kar : out Character) is
   -- Aurrebaldintza:
   --    F = <c> (c, karakterea)
   -- Postbaldintza:
   --    Kar = c
begin
   Ada.Text_IO.Get (Item => Kar);
end Irakurri_Karakterea;
