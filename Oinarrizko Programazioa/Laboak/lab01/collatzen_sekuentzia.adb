--Proba-kasuak:
-- 18 --> irteera: Collatzen sekuentzia: 18 9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1
                                    --Zenbaki kopurua: 21
                                    --Batura: 357
--******************************

WITH Irakurri_Osoa, Idatzi_Osoa, Idatzi_Katea;
PROCEDURE Collatzen_Sekuentzia IS
   --Zehaztapenak:
      --aurrebalditza:
         --F=<N>, non N zenbaki oso positiboa
      --postbaldintza:
         --G=<Collatz, Zenb_kop, batu>, non Collatz, Zenb_kop, batu zenbaki osoak
         --Collatz= N zenbakiaren Collatzen sekuentzia
         --Zenb_kop= Collatzen sekuentziaren zenbaki kopurua
         --Batu= Collatzen sekuentizaren zenbakien batura

   N, Collatz, Zenb_Kop, Batu: Integer;

BEGIN
   Idatzi_katea("Sartu edozein zenbaki positibo Collatzen sekuentzia egiteko:");
   Irakurri_Osoa(N);
   Zenb_Kop:= 1;
   batu:= N;
   WHILE N /= 1 LOOP
      IF (N mod 2) = 0 THEN
         N:= N/2;
         collatz:= n;
         idatzi_osoa(Collatz);
      ELSE
         N:= N*3 + 1;
         collatz:= n;
         idatzi_osoa(Collatz);
      END IF;
      Batu:= Batu + N;
      Zenb_Kop:= Zenb_Kop +1;
   END LOOP;
   idatzi_katea("");
   idatzi_katea("Collatzen sekuentziaren zenbaki kopurua:");
   Idatzi_Osoa(Zenb_Kop);
   idatzi_katea("");
   idatzi_katea("Collatzen sekuentziaren batura:");
   idatzi_osoa(batu);
END;


