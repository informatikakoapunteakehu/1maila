FUNCTION Zenbat_Digitu (N : IN Positive) RETURN Natural IS
-- Aurrebaldintza: N > 0
-- Postbaldintza: Emaitza N-ren digitu kopurua da

   Dig, Z: Integer;

BEGIN
   Z:= 1;
   Dig:=0;
   WHILE N >= Z LOOP
      Z := Z * 10;
      dig:= dig+1;
   END LOOP;
   return dig;
END Zenbat_Digitu;


