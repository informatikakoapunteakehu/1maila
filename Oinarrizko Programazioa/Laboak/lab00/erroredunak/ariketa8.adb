with Idatzi_Katea, Idatzi_Osoa;

procedure ariketa8 is

   -- Aurrebaldintza:
   --   F = < >
   -- Postbaldintza:
   --   G = <n1 n2 ... n9> (zenb. osoa), non:
   --     nj j. zenbakia den

   i : Integer;
 begin

   -- idatzi zenbakiak
   Idatzi_Katea ("10 baino txikiagoak diren zenbakiak idatziko ditut:");

   i := 1;
   while (i < 10) loop
       i:= i+1;
       Idatzi_Osoa(I);
   end loop;

end ariketa8;


