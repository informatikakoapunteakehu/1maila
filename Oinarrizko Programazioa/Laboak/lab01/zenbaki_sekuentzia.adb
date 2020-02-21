-- proba-kasuak:
-- 6 -6 -8 -3 4 7 0 --> irteera: 3 eta 7
-- 6 4 7 0 --> irteera: 0 eta 17
-- -6 -8 -3 0 --> irteera: 3 eta 0
-- 0 --> irteera: 0 eta 0

WITH Idatzi_Katea, Irakurri_osoa, Idatzi_osoa;
PROCEDURE Zenbaki_Sekuentzia IS
--Zehaztapenak:
   --Aurrebaldintza:
      --F=<z1,z2,...,zn, 0>, non
      --z1,z2,...,zn zenbaki osoak (/=0)
   --Postbaldintza:
      --G=<Neg, batu>, non Neg eta Batu zenbaki osoak
      --Neg=F sekuentziako negatibo kopurua
      --Batu= F sekuentziako positibo batura
   Z, Neg, Batu: integer;
BEGIN
   Idatzi_Katea("Idatzi zenbakizko katea eta zeroz bukatu:");
   Irakurri_osoa(Z);
   Neg:= 0;
   Batu:= 0;
   WHILE Z /=0 LOOP
      IF Z<0 THEN
         Neg:=Neg+1;
      ELSE
         Batu:= Batu + Z;
      END IF;
      Irakurri_osoa(Z);
   END LOOP;
   Idatzi_katea("Zenbaki negatibo kopurua:");
   Idatzi_Osoa(Neg);
   idatzi_katea("");
   idatzi_katea("Zenbaki oso positiboen batura:");
   Idatzi_osoa(Batu);
   END;

