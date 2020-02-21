with idatzi_katea, idatzi_osoa;
PROCEDURE Bat_Datorren_Minimoa_Frogatu IS

   TYPE Oso_Bektore_1_9 IS ARRAY (1 .. 9) OF Integer;

function Bat_Datorren_Minimoa (ZB : in Oso_Bektore_1_9) return Integer is

-- Aurrebaldintza:
-- (9 osoko bektore), muino erakoa: zenbakiak hasieran gorantz
-- ordenatuta daude, eta gero beherantz
-- Postbaldintza:
-- emaitza = goranzko eta beheranzko ataletan bat datorren zenbakirik
-- txikiena, halakorik baldin badago;
-- bektoreko zenbakirik handiena, goranzko eta beheranzko
-- ataletan bat datorren zenbakirik ez baldin badago.
-- Proba-kasuak:
-- ZB = (1, 2, 3, 5, 6, 7, 8, 3, 2) => emaitza = 2
-- ZB = (1, 9, 8, 6, 5, 4, 3, 2, 1) => emaitza = 1
-- ZB = (-1, 2, 4, 5, 6, 7, 8, -1, -5) => emaitza = -1
-- ZB = (1, 5, 8, 6, 5, 4, 3, 2, 0) => emaitza = 5
-- ZB = (1, 5, 8, 7, 6, 4, 4, 2, -1) => emaitza = 8

   Z, Min: Integer;
   aurkitua: boolean;

BEGIN
   Z:= 1;
   Aurkitua := False;
   min := 1000;
   WHILE NOT Aurkitua LOOP
      IF ZB(Z) > ZB(Z+1) THEN
         Aurkitua := True;
      ELSE
         Z := Z+1;
      END IF;
   END LOOP;   FOR I IN REVERSE 1..Z LOOP
      FOR J IN (Z+1)..9 LOOP
         IF ZB(J)=ZB(I) THEN
            Min := ZB(J);
         END IF;
      END LOOP;
   END LOOP;
   IF Min /= 1000 THEN
      IDATZI_KATEA("MINIMO KOMUNA HURRENGOA DA:");
      RETURN Min;
   ELSE
      IDATZI_KATEA("EZ DU MINIMO KOMUNIK, MAXIMOA HURRENGOA DA:");
      RETURN ZB(Z);
   END IF;
END Bat_Datorren_Minimoa;
---------------------------------
--PROBA PROGRAMA--
-----------------------------
A, B, C: OSO_BEKTORE_1_9;
Z: INTEGER;

BEGIN
   Idatzi_Katea("HEMEN BAT_DATORREN_MINIMOA FUNTZIOA FROGATUKO DUGU");
   IDATZI_KATEA("");
   IDATZI_KATEA("A B ETA C BEKTOREEN BALIOAK HURRENGOAK DIRA:");
   IDATZI_KATEA("");
   IDATZI_KATEA("A:=(1, 2, 3, 5, 6, 7, 8, 3, 2) ; B:=(-1, 2, 4, 5, 6, 7, 8, -1, -5) ; C:=(1, 5, 8, 7, 6, 4, 4, 2, -1)");
   A:=(1, 2, 3, 5, 6, 7, 8, 3, 2);
   B:=(-1, 2, 4, 5, 6, 7, 8, -1, -5);
   C:=(1, 5, 8, 7, 6, 4, 4, 2, -1);
   IDATZI_KATEA("");
   IDATZI_KATEA("");
   IDATZI_KATEA("--------------------------------");
   IDATZI_KATEA("A BEKTOREAREN MINIMO KOMUNA: [2]");
   IDATZI_KATEA("--------------------------------");
   IDATZI_KATEA("");
   Z:= Bat_Datorren_Minimoa(A);
   IDATZI_OSOA(Z);
   IDATZI_KATEA("");
   IDATZI_KATEA("");
   IDATZI_KATEA("---------------------------------");
   IDATZI_KATEA("B BEKTOREAREN MINIMO KOMUNA: [-1]");
   IDATZI_KATEA("---------------------------------");
   IDATZI_KATEA("");
   Z:=Bat_Datorren_Minimoa(B);
   IDATZI_OSOA(Z);
   IDATZI_KATEA("");
   IDATZI_KATEA("");
   IDATZI_KATEA("--------------------------------");
   IDATZI_KATEA("C BEKTOREAREN MINIMO KOMUNA: [8]");
   IDATZI_KATEA("--------------------------------");
   IDATZI_KATEA("");
   Z:=Bat_Datorren_Minimoa(C);
   IDATZI_OSOA(Z);
END;


