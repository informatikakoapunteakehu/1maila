with Ada.Text_IO;
procedure Idatzi_Katea   (Kat : in String) is
   -- Aurrebaldintza:
   --    Kat (karaktere-katea)
   -- Postbaldintza:
   --    G = <Kat>, eta idazketa-posizioa hurrengo lerrora pasatu da
begin
   Ada.Text_IO.Put(Kat);
   Ada.Text_IO.New_Line;
end Idatzi_Katea;
