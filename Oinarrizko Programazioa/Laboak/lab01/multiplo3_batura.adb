-- ***** Proba-kasuak *****
-- sarrera: 4  --> irteera: 30
-- sarrera: 2  --> irteera: 9
-- ************************

with Irakurri_Osoa, Idatzi_Osoa, Idatzi_katea;
procedure multiplo3_batura is
--Zehaztapenak
   -- Aurrebaldintza:
      -- F=<N>, non N zenbaki naturala
      -- N >0
   -- Postbaldintza:
      --G=<M>, non M zenbaki naturala
      --M= 3ren multiplo diren lehen N zenbakien batura.

   N, M, kont: integer;

BEGIN
   Idatzi_Katea("Sartu N zenbaki bat 3ren N multiploen batura egiteko");
   Irakurri_Osoa(N);
   Kont:= 1;
   M:= 0;
   WHILE Kont <= N LOOP
      M:= M + 3*Kont;
      Kont:= Kont +1;
   END LOOP;
   Idatzi_katea("3ren multiploen batura:");
   Idatzi_Osoa(M);

end multiplo3_batura;
