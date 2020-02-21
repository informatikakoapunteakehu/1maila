WITH Idatzi_Osoa, Idatzi_Karakterea, Idatzi_Katea;
PACKAGE BODY Oso_Listak IS

   PROCEDURE Hasieratu (
         L : IN OUT Lista) IS
   BEGIN
      L.Zenbat := 0;
   END Hasieratu;

   PROCEDURE Txertatu_Bukaeran (
         L : IN OUT Lista;
         X : IN     Integer) IS
   BEGIN
      L.Zenbat := L.Zenbat + 1;
      L.Info (L.Zenbat) := X;
   END Txertatu_Bukaeran ;

   PROCEDURE Idatzi (
         L : IN     Lista) IS
   BEGIN
      Idatzi_Karakterea ('<');
      FOR I IN 1 .. L.Zenbat LOOP
         Idatzi_Osoa (L.Info (I));
      END LOOP;
      Idatzi_Katea (">");
   END Idatzi;

   PROCEDURE Fusionatu (
         L1,
         L2 : IN     Lista;
         L  :    OUT Lista) IS

      I,
      J : Integer;

   BEGIN
      I:=1;
      J:=1;
      L.Zenbat :=0;
      WHILE I<=L1.Zenbat AND J<=L2.Zenbat LOOP
         IF L1.Info(I) > L2.Info(J) THEN
            L.Zenbat:=L.Zenbat+1;
            L.Info(L.zenbat):=L2.Info(J);
            J:=J+1;
         ELSE
            L.Zenbat:=L.Zenbat+1;
            L.Info(l.zenbat):=L1.Info(I);
            I:=I+1;
         END IF;
      END LOOP;
      --edo I>L1.Zenbat edo J>L2.Zenbat
      IF I>L1.Zenbat THEN
         FOR A IN J..L2.Zenbat LOOP
                       l.zenbat:=l.zenbat+1;
            L.Info(l.zenbat):=L2.Info(A);
         END LOOP;
      ELSE
         FOR A IN I..L1.Zenbat LOOP
            l.zenbat:=l.zenbat+1;
            L.Info(l.zenbat):=L1.Info(A);
         END LOOP;
      END IF;

   END Fusionatu;

   PROCEDURE Txertatu_Y_Xren_Atzetik (
         L : IN OUT Lista;
         Y,
         X : IN     Integer) IS

      I: Integer;
      Aurkitua: Boolean;

   BEGIN
      I:=1;
      aurkitua:=false;
      WHILE I<=L.Zenbat and not aurkitua LOOP
         IF L.Info(I)=X THEN
            Aurkitua:=True;
         END IF;
         I:=I+1;
      END LOOP;      IF Aurkitua THEN
         L.zenbat:=L.zenbat+1;
         FOR J IN REVERSE I..(L.Zenbat-1) LOOP
            L.Info(J+1):=L.Info(J);
         END LOOP;
         L.info(I):=Y;
      ELSE
         Txertatu_Bukaeran(L,Y);
      END IF;
   END Txertatu_Y_Xren_Atzetik;

END Oso_Listak;
