with Idatzi_Katea;
with Irakurri_Osoa;
with Idatzi_Osoa;
with Telefonoa_Da;

procedure Proba_Telefonoa_Da is

   -- Aurre: Zenbakiak (teklatutik sartzen dira, eskatu ahala).
   --        Datu-sartzea 0 zenbakiarekin amaitzen da.
   -- Post: Pantailan adierazten da zein diren telefono-zenbakiak eta zein ez.

   Z,
   Kont : Natural;

begin
   Idatzi_Katea ("PROBATU TELEFONOAK. BUKATZEKO, SARTU 0 ZENBAKIA.");
   Idatzi_Katea ("================================================");
   Kont := 1;
   Idatzi_Osoa (Kont);
   Idatzi_Katea (". proba:");
   Idatzi_Katea ("Tekleatu zenbakia eta sakatu <RETURN>");
   Irakurri_Osoa (Z);
   while Z /= 0 loop
      Idatzi_Osoa (Z);
      Idatzi_Katea (" zenbakia sartu duzu, eta...");
      if Telefonoa_Da (Z)
            then
         Idatzi_Katea ("Telefonoa da");
      else
         Idatzi_Katea ("EZ da telefonoa");
      end if;
      Kont := Kont+1;
      Idatzi_Osoa (Kont);
      Idatzi_Katea (". proba:");
      Idatzi_Katea ("Tekleatu zenbakia eta sakatu <RETURN>");
      Irakurri_Osoa (Z);
   end loop;
end Proba_Telefonoa_Da;
