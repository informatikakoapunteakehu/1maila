with Idatzi_Katea;
with Irakurri_Osoa;
with Idatzi_Osoa;
WITH Igarren_Digitua;

procedure Proba_Igarren_Digitua is

   -- Aurre: Zenbaki-bikoteak (teklatutik sartzen dira, eskatu ahala):
   --        telefono-zenbakia eta digituaren posizioa (1 eta 9 artekoa).
   --        Datu-sartzea 0 0 bikotearekin amaitzen da.
   -- Post: Pantailan telefono-zenbaki horietako bakoitzaren
   --       Igarren posizioko digitua (eskuinetik kontatuta) erakusten da.

   Tel,
   I,
   Kont : Natural;

begin
   Idatzi_Katea ("PROBATU Igarren DIGITUA. BUKATZEKO, SARTU: 0 0");
   Idatzi_Katea ("==============================================");
   Kont := 1;
   Idatzi_Osoa (Kont);
   Idatzi_Katea (". proba:");
   Idatzi_Katea ("Tekleatu TELEFONOA eta DIGITUAREN POSIZIOA, eta sakatu <RETURN>");
   Irakurri_Osoa (Tel);
   Irakurri_Osoa (I);
   while I /= 0 loop
      Idatzi_Osoa (Tel);
      Idatzi_Katea (" telefonoaren");
      Idatzi_Osoa (I);
      Idatzi_Katea (". digitua:");
      Idatzi_Osoa (Igarren_Digitua (Tel, I));
      Idatzi_Katea ("");
      Kont := Kont + 1;
      Idatzi_Osoa (Kont);
      Idatzi_Katea (". proba:");
      Idatzi_Katea ("Tekleatu TELEFONOA eta DIGITUAREN POSIZIOA, eta sakatu <RETURN>");
      Irakurri_Osoa (Tel);
      Irakurri_Osoa (I);
   end loop;
end Proba_Igarren_Digitua;
