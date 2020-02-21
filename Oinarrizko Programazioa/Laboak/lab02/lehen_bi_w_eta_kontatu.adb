--Proba-kasuak:
--F=<abcwdew.> --> irteera: G=<4,7,7>
--F=<abcwde.> ---> irteera: G=<0,0,6>
--F=<.> ---> irteera: G=<0,0,0>

WITH Irakurri_Karakterea, Idatzi_Osoa, Idatzi_Katea;
PROCEDURE Lehen_bi_w_eta_kontatu IS
   --Zehaztapenak
      --Aurrebaldintza:
         --F=<kar1,kar2,...,karn,'.'>, non
         --kar1,kar2,...,karn karaktereak diren (/='.')
      --postbaldintza:
         --G=<pos1,pos2,kar_kop>, non pos1, pos2, kar_kop zenbaki osoak diren
         --pos1,pos2= F sekuentziako lehenengo bi 'w' karakterreen agerpenak, egotekotan.
         --kar_kop= F sekuentziako karaktere guztien kopurua.

   Kar: Character;
   Pos, Pos1, Pos2: Integer;
   Kont: Integer:= 0;

BEGIN
   Idatzi_Katea("Sartu hemen karaktere sekuentzia eta '.' amaitu:");
   Irakurri_Karakterea(Kar);
   Pos1:=0;
   pos2:=0;
   Pos:= 1;
   WHILE Kar /= '.'LOOP
      IF Kar = 'w' THEN
         IF pos1=0 THEN
            pos1:=Pos;
         ELsIF pos2=0 then
            pos2:=Pos;
         END IF;
      END IF;
      Irakurri_Karakterea(Kar);
      Pos:= Pos + 1;
         Kont:= Kont + 1;
   END LOOP;
   if pos1 /= 0 and pos2 /=0 then
   Idatzi_Osoa(pos1);
         Idatzi_Osoa(Pos2);
   ELSE
      Idatzi_Osoa(0);
      Idatzi_Osoa(0);
   END IF;
   Idatzi_Osoa(Kont);
END;
