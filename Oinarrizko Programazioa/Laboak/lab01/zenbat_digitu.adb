--Proba-kasuak:
--12345678 --> irteera: 8 digitu
--1 --> irteera: 1 digitu
--******************************
WITH Irakurri_Osoa, Idatzi_Osoa, Idatzi_Katea;
PROCEDURE Zenbat_Digitu IS
   --Zehaztapenak:
      --Aurrebaldintza:
         --F=<N>, non N zenbaki osoa (>0)
      --Postbaldintza:
         --G=<Dig>, non Dig zenbaki osoa
         --Dig= F sarrerako N zenbakiaren digitu kopurua.

   Dig, N, Z: Integer;

BEGIN
   Idatzi_Katea("Sartu hemen zure zenbakia:");
   Irakurri_Osoa(N);
   Z:= 1;
   Dig:=0;
   WHILE N >= Z LOOP
      Z := Z * 10;
      dig:= dig+1;
   END LOOP;
   Idatzi_Osoa(Dig);
   Idatzi_katea(" digitu");
END Zenbat_Digitu;



