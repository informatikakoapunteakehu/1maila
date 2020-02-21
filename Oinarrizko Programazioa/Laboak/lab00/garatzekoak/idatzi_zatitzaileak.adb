with Irakurri_Osoa;
with Idatzi_Katea, Idatzi_Osoa;

procedure Idatzi_Zatitzaileak is

   -- Aurrebaldintza:
   --   F = <n> (n, zenb. osoa), non:
   --     n > 0
   -- Postbaldintza:
   --   G = <n1, n2... nk> (zenb. osozko sek.), non:
   --     n1, n2... nk n-ren zatitzaileak baitira
   --     n-ren zatitzaile guztiak daude G-n

   N, I, Hondarra : Integer;

begin

   -- irakurri zenbakia
   Idatzi_Katea ("Idatzi zenbaki oso bat eta sakatu <RETURN>:");
   Irakurri_Osoa (N);

   -- kalkulatu eta idatzi zatitzaileak
   Idatzi_Katea ("Hauek dira bere zatitzaileak: ");

   I:= 1;
   while I <= N loop
      Hondarra := N mod I;
      if Hondarra = 0 then
	      Idatzi_Osoa (I);
      end if;
      I := I + 1 ;
   end loop;

end Idatzi_Zatitzaileak ;


