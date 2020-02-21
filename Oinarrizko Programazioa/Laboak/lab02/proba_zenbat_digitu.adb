with Idatzi_Katea;
with Irakurri_Osoa;
with Idatzi_Osoa;
with Zenbat_Digitu;

procedure Proba_Zenbat_Digitu is

   -- Aurre: Zenbakiak (teklatutik sartzen dira, eskatu ahala).
   --        Datu-sartzea 0 zenbakiarekin amaitzen da.
   -- Post: Pantailan erakusten da zenbat digitu dituen zenbakiak.

   Z,
   Kont : Natural;

begin
   Idatzi_Katea ("PROBATU ZENBAT_DIGITU. BUKATZEKO, SARTU 0 ZENBAKIA.");
   Idatzi_Katea ("===================================================");
   Kont := 1;
   Idatzi_Osoa (Kont);
   Idatzi_Katea (". proba:");
   Idatzi_Katea ("Tekleatu zenbakia eta sakatu <RETURN>");
   Irakurri_Osoa (Z);
   while Z /= 0 loop
      Idatzi_Osoa (Z);
      Idatzi_Katea (" zenbakiaren digitu kopurua:");
      Idatzi_Osoa (Zenbat_Digitu(Z));
      Idatzi_Katea ("");
      Kont := Kont + 1;
      Idatzi_Osoa (Kont);
      Idatzi_Katea (". proba:");
      Idatzi_Katea ("Tekleatu zenbakia eta sakatu <RETURN>");
      Irakurri_Osoa (Z);
   end loop;
end Proba_Zenbat_Digitu;
