with lehena_da;

PROCEDURE Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu
(B : in Oso_Bektore; Pos : out Natural; Balioa : out Integer) is
-- Aurrebaldintza:
   -- B (oso-bektorea), non edozein I-rentzat, 1 <= I <= 10, B (I) > 0.
-- Postbaldintza:
   -- B-n zenbaki lehenik baldin badago:
      -- Pos da B-ko lehen zenbaki lehenaren posizioa;
      -- Balioa da B-ko lehen zenbaki lehena;
   -- bestela:
      -- Pos = 0.


N : CONSTANT Positive := 10;
TYPE Oso_Bektore IS ARRAY (1 .. N) OF Integer;

BEGIN
   I:= B'First;
   WHILE I <= B'Last and pos/= 0 LOOP
      IF Lehena_Da(B(I)) THEN
         Pos:= I;
         Balioa:= B(I);
      END IF;
      I:= I+1;
   END LOOP;
   RETURN Pos;
   RETURN Balioa;
END;

