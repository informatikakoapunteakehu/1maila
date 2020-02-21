WITH Idatzi_Osoa;
WITH Idatzi_Katea;

   procedure Kalkulatu_Karratua is

   -- Aurrebaldintza:
   --	   F = <z1> (z1, zenb. osoa)
   -- Postbaldintza:
   --	   G = <z2> (z2, zenb. osoa), non:
   --	     z2 = Z1 ** 2

   Zenbakia, Karratua: Integer;

begin
   Zenbakia:=1;
   Idatzi_Katea("Hauek dira lehenengo 20 zenbakien karratuak");
   for I in 1..20000000 loop
      Karratua:= Zenbakia * 2;
      Idatzi_Osoa(Karratua);
      Zenbakia:= Zenbakia + 1;
   end loop;
end Kalkulatu_Karratua;

