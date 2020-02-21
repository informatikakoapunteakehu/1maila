--Proba-kasuak:
--F=<abcwdew.> --> irteera: G=<4,7>
--F=<abcwde.> ---> irteera: G=<0,0>
--F=<.> ---> irteera: G=<0,0>

WITH Irakurri_Karakterea, Idatzi_Osoa, Idatzi_Katea;
PROCEDURE Lehen_Bi_W IS
   --Zehaztapenak
      --Aurrebaldintza:
         --F=<kar1,kar2,...,karn,'.'>, non
         --kar1,kar2,...,karn karaktereak diren (/='.')
      --postbaldintza:
         --G=<pos1,pos2>, non pos1, pos2 zenbaki osoak diren
         --pos1,pos2= F sekuentziako lehenengo bi 'w' karakterreen agerpenak, egotekotan.

   Kar: Character;
   Pos, Pos1, Pos2: Integer;
   Kont: Integer:= 0;

BEGIN
   Idatzi_Katea("Sartu hemen karaktere sekuentzia eta '.' amaitu:");
   Irakurri_Karakterea(Kar);
   Pos1:=0;
   pos2:=0;
   Pos:= 1;
   WHILE Kar /= '.' AND Kont < 2 LOOP
      IF Kar = 'w' THEN
         IF pos1=0 THEN
            pos1:=Pos;
         ELSE
            pos2:=Pos;
         END IF;
         Kont:= Kont + 1;
      END IF;
      Irakurri_Karakterea(Kar);
      Pos:= Pos + 1;
   END LOOP;
   IF Kont < 2 THEN
      Pos1:=0;
   END IF;
   Idatzi_Osoa(pos1);
   Idatzi_Osoa(Pos2);
END;

