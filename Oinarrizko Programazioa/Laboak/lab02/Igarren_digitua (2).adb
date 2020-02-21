FUNCTION Igarren_digitua (zbkia, I : IN Positive) RETURN Natural IS
   Kont, tel: Integer;
BEGIN
   tel:= zbkia;
   Kont:= 0;
   WHILE ((tel - 10**(I)) >= 0) LOOP
      tel:= tel - 10**(I);
   END LOOP;
   WHILE (tel - 10**(I-1)) >= 0 LOOP
      tel:= tel - 10**(I-1);
      Kont:= Kont +1;
      END LOOP;
   return Kont ;
END;