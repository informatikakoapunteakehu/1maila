WITH Irakurri_Osoa, Idatzi_Osoa;
procedure Igarren_digitua IS
   Kont, I, tel: Integer;
BEGIN
   Irakurri_Osoa(Tel);
   irakurri_osoa(I);
   Kont:= 0;
   WHILE ((tel - 10**(I)) >= 0) LOOP
      tel:= tel - 10**(I);
   END LOOP;
   WHILE (tel - 10**(I-1)) >= 0 LOOP
      tel:= tel - 10**(I-1);
      Kont:= Kont +1;
   END LOOP;
   Idatzi_osoa(Kont);
END;