FUNCTION Telefonoa_Da (Zbkia : IN Positive) RETURN Boolean IS
   -- Aurrebaldintza: Zbkia (zenb. oso positiboa)
   -- Postbaldintza: Emaitza True da, b.s.b. 999999999 >= Zbkia >= 600000000
   --                eta Zbkia 9, 7 edo 6 digituarekin hasten bada

   boolear: boolean;
BEGIN
   boolear:= false;
   IF Zbkia <= 999999999 AND Zbkia >= 600000000 THEN
      IF (Zbkia <= 899999999 AND Zbkia >= 700000000) THEN
         Boolear := False;
      ELSE
         boolear := true;
      END IF;
   END IF;
   Return (boolear);
END;
