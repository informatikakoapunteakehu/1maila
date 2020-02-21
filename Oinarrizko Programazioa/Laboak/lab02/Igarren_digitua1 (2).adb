FUNCTION Igarren_Digitua1 (Zbkia, I : IN Positive) RETURN Natural IS

   --Aurrebaldintza: Zbkia telefono zenbakia da
   -- 1 <= I <= 9
   --Postbaldintza: Emaitza Zbkia-ren I. digitua da (eskuinetik kontatua)

   K, N: Integer;
   X: Integer := Zbkia;
   Y: Integer := I;

BEGIN
   K:= 0;
   Y:= 9-Y;
   N:= 10**8;
   WHILE K/= Y LOOP
      X:= X mod N;
      N:= N/10;
      K := K +1;
   END LOOP;
   X := X/N;
   RETURN X;
END;

-- k                 0           1
-- y      3          6
-- n                10^8        10^7
-- x  948700300  948700300    48700300
