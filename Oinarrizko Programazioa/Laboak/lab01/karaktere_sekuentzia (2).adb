--Proba-kasuak:
--. --> irteera: .
-- kai xo mu n du a. --> irteera: kaixomundua.
--****************************

with irakurri_karakterea, idatzi_karakterea, idatzi_katea;
PROCEDURE Karaktere_Sekuentzia IS
--Zehaztapenak:
   --aurrebaldintza:
      --F=<kar1, kar2, ..., karn>, non
      --kar1, kar2, ..., karn karaktereak diren (/= '.')
    --postbaldintza:
       --G=<katea>, non Katea karaktereen sekuentzia den.
       --katea= F sarrerako kar1, kar2, ..., karn horiez guztiez osatutako sekuentzia.
  kar: character;
BEGIN
   Idatzi_katea("Sartu karaktere sekuentzia:");
   Irakurri_Karakterea(Kar);
   WHILE Kar/='.' LOOP
      IF Kar = ' ' THEN
         Irakurri_Karakterea(Kar);
      ELSE
         Idatzi_Karakterea(Kar);
         Irakurri_Karakterea(Kar);
      END IF;
   END LOOP;
   idatzi_karakterea('.');
END Karaktere_Sekuentzia;


