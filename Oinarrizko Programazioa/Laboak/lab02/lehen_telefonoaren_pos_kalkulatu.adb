--Proba-kasuak:
--F=<336025419,650953648,26, 943753648, 0> --> irteera: G=<2>
--F=<0> --> irteera: G=<0>
--F=<1,0> --> irteera: G=<0>

WITH Irakurri_Osoa, Idatzi_Osoa, Idatzi_Katea;
WITH Telefonoa_Da;
PROCEDURE Lehen_Telefonoaren_Pos_Kalkulatu IS

--Zehaztapenak:
   --Aurrebaldintza:
      --F=<z1,z2,...,zn,0>, non z1,z2,...,zn zenbaki osoak diren (/=0)
      --z1,z2,...,zn = telefono zenbakiak izan daitezkeenak.
   --Postbaldintzak:
      --G=<tel_pos>, non
      --tel_pos= F sekuentzian telefonoak badaude, lehenengoaren posizioa

   Z: Integer;
   Aurkitua: Boolean;
   Pos: Integer:= 1;
   I: Integer:= 0;


BEGIN
   Idatzi_Katea("Sartu hemen zenbaki sekuentzia eta 0-z amaitu:");
   Irakurri_Osoa(Z);
   aurkitua:= false;
   WHILE Z /= 0 AND Aurkitua=False LOOP
      IF Telefonoa_Da(Z) THEN
         Aurkitua := True;
         I := pos;
      END IF;
      Pos:= Pos + 1;
      Irakurri_Osoa(Z);
   END LOOP;
   Idatzi_katea("Hau da lehenengo telefonoaren posizioa:");
   Idatzi_Osoa(I);
END;

      