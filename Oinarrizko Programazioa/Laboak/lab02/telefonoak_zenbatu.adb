--Proba-kasuak:
--F=<943702211,943215078,649785315,336025419,750953648,26,0> --> irteera: G=<2,2,2>
--F=<0> --> irteera: G=<0,0,0>
--F=<1,0> --> irteera: G=<0,0,1>

WITH Irakurri_Osoa, Idatzi_Osoa, Idatzi_Katea;
with telefonoa_da, igarren_digitua;
PROCEDURE Telefonoak_Zenbatu IS

--Zehaztapenak:
   --Aurrebaldintza:
      --F=<z1,z2,...,zn,0>, non z1,z2,...,zn zenbaki osoak diren (/=0)
      --z1,z2,...,zn = telefono zenbakiak
   --Postbaldintzak:
      --G=<tel_finko_kop,mugikor_kop,ez_tel>, non
      --tel_finko_kop= F sekuentziako telefono finko kopurua (9tik hasi)
      --mugikor_kop= F sekuentziako mugikor kopurua (6 edo 7tik hasi)
      --ez_tel= F sekuentziatik telefonoak ez diren zenbakien kopurua
   Z: Integer;
   tel_finko_kop,mugikor_kop,ez_tel: integer := 0;


   BEGIN
      Idatzi_Katea("Sartu hemen zenbakien sekuentzia eta 0-z amaitu:");
      Irakurri_osoa(Z);
      WHILE Z /= 0 LOOP
         IF (Telefonoa_Da(Z) = False) THEN
            Ez_Tel:= Ez_Tel +1;
         ELSE
            IF Igarren_digitua(Z,9) = 9 then
                  Tel_Finko_Kop:= Tel_Finko_Kop +1;
            elsif (Igarren_digitua(Z,9) = 6) or (Igarren_digitua(z,9) = 7) then
                     Mugikor_Kop:= Mugikor_Kop +1;
            END IF;
         END IF;
         Irakurri_Osoa(Z);
      END LOOP;
         Idatzi_Katea("Telefono finko kopurua:");
         Idatzi_Osoa(Tel_Finko_Kop);
         Idatzi_Katea("");
         Idatzi_Katea("Mugikor kopurua:");
         Idatzi_Osoa(Mugikor_Kop);
         Idatzi_Katea("");
         Idatzi_Katea("Telefonoak ez diren kopurua:");
         Idatzi_Osoa(Ez_Tel);
      END;


