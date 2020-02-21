-- Proba-kasuak
-- 3, 4, 7 --> irteera: "Ez da triangelua"
-- 3, 4, 1 --> irteera: "Ez da triangelua"
-- 3, 3, 3 --> irteera: "Triangelua ekilateroa da"
-- 3, 4, 4 --> irteera: "Triangelua isoszelea da"
-- 3, 4, 5 --> irteera: "Triangelua eskalenoa da"
-- ***********************************************


WITH idatzi_katea, irakurri_osoa;
PROCEDURE triangelua_da IS
-- Zehaztapenak:
   -- Aurrebaldintza
      -- F=<A,B,C>, non A,B,C zenbaki naturalak (/=0)
      -- A,B,C= triangeluaren aldeak izan daitezkeenak.
   -- Postbaldintza
      -- G=<"Kate1","Kate2">
      -- Kate1= "Triangelua da" baldin A,B,C triangeluaren aldeak diren edo
      -- "Ez da triangelua" baldin A,B,C ezin diren aldeak izan.
      --Kate2= "isoszele motakoa", "aldekide motakoa" edo "eskaleno motakoa".

      A, B, C: Integer;
BEGIN
   idatzi_katea("Triangelua den aztertzeko ...");
   idatzi_katea("Sartu lehen aldea: ");
   Irakurri_Osoa(A);
   Idatzi_Katea("Sartu bigarren aldea: ");
   Irakurri_Osoa(B);
   Idatzi_Katea("Sartu hirugarren aldea: ");
   Irakurri_Osoa(C);
   IF A+B=C OR A+C=B OR B+C=A THEN
      Idatzi_Katea("Ez da triangelua");
   ELSE
      Idatzi_Katea("Triangelua da, ");
      IF A=B AND B=C THEN
         Idatzi_Katea("aldekide motakoa");
      ELSIF A=B OR A=C OR B=C THEN
         Idatzi_Katea("isoszele motakoa");
      ELSIF A/=B AND B/=C AND C/=A THEN
         Idatzi_Katea("eskaleno motakoa");
      END IF;
   END IF;
END triangelua_da;