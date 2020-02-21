-- ***** Proba-kasuak *****
-- sarrera: 4  --> irteera: 30
-- sarrera: 2  --> irteera: 9
-- ************************

with Iraurri_Osoa, Idatzi_Osoa;
procedure multiplo3_batura is
--Zehaztapenak
   -- Aurrebaldintza:
      -- F=<N>, non N zenbaki naturala
   -- Postbaldintza:
      --G=<M>, non M zenbaki naturala
      --M= 3ren multiplo diren lehen N zenbakien batura.

   N, M, kont: integer;

begin
   Irakurri_Osoa(N);
   Kont:= 1;
   M:= 0:
   WHILE Kont <= N LOOP
      M:= M + 3*Kont;
      Kont:= Kont +1;
   END LOOP;
   Idatzi_Osoa(M);

end multiplo3_batura;
