with Ada.Text_IO, Ada.Integer_Text_IO;
with Idatzi_Osoa, Idatzi_Karakterea, Idatzi_Katea;
package body Oso_Lista_Ordenatuak is

   procedure Hutsa_Sortu (
         L :    out Lista) is
   begin
      L := null;
   end Hutsa_Sortu;

   procedure Idatzi (
         L : in     Lista) is
      Lag : Lista := L;
   begin
      Idatzi_Karakterea ('<');
      while Lag /= null loop
         Idatzi_Osoa (Lag.Info);
         Lag := Lag.Hurrengoa;
      end loop;
      Idatzi_Katea (">");
   end Idatzi;

   procedure Txertatu_Ordenan (
         L : in out Lista;
         Z : in     Integer) is
      Aurrekoa,
      Unekoa   : Lista;
   begin
      Aurrekoa := null;
      Unekoa := L;
      while (Unekoa /= null) and then (Unekoa.Info < Z) loop
         Aurrekoa := Unekoa;
         Unekoa := Unekoa.Hurrengoa;
      end loop;
      if Aurrekoa = null then -- hasieran txertatu
         L := new Nodo'(Z, L);
      else -- Aurrekoa /= null
         Aurrekoa.Hurrengoa := new Nodo'(Z, Unekoa);
      end if;
   END Txertatu_Ordenan;


   procedure Kargatu_Ordenatuta (
         L          :    out Lista;
         Fitx_Izena : in     String) is
      Z:Integer;
      F: Ada.Text_IO.File_Type;
   BEGIN
      Ada.Text_IO.Open(
         File =>F ,
         Mode =>Ada.Text_IO.In_File ,
         Name =>Fitx_Izena);
      WHILE NOT Ada.Text_IO.End_Of_File(F) LOOP
         Ada.Integer_Text_IO.Get(F,Z);
         Txertatu_Ordenan(L,Z);
      END LOOP;
      Ada.Text_IO.Close(F);
   end Kargatu_Ordenatuta;

   procedure Txertatu_Bukaeran (
         L : in out Lista;
         Z : in     Integer) is
      Lag : Lista := L;
   begin
      if L = null then
         L := new Nodo'(Z, null);
      else
         while Lag.Hurrengoa /= null loop
            Lag := Lag.Hurrengoa;
         end loop;
         Lag.Hurrengoa := new Nodo'(Z, null);
      end if;
   end Txertatu_Bukaeran;

   function Zenbakiaren_Posizioa (
         L : in     Lista;
         Z : in     Integer)
         RETURN Natural IS

      Lag: Lista;
      Pos: Integer;
      Aurkitua, handiagoa : boolean;

   BEGIN
      IF L = NULL THEN
         Pos := 0;
      ELSE
         Lag := L;
         Pos := 0;
         Handiagoa:= false;
         Aurkitua := false;
         WHILE Lag /= NULL and not Aurkitua and not handiagoa LOOP
            IF Lag.Info = Z THEN
               Aurkitua:= true;
            elsif Lag.Info > Z THEN
               Handiagoa:= True;
            END IF;
            Pos := Pos + 1;
            Lag := Lag.Hurrengoa;
         END LOOP;
         IF NOT Aurkitua THEN
            Pos:= 0;
         END IF;
      END IF;
      RETURN Pos;
   end Zenbakiaren_Posizioa;

   procedure Ebaki (
         L1,
         L2 : in     Lista;
         L  :    out Lista) is

      Lag1, Lag2: Lista;
      aurkitua, handi: Boolean;

   BEGIN
     Hutsa_sortu(L);
     IF L1 = NULL or L2= NUll THEN
        L := null;
     ELSE
        Lag1:= L1;
         Lag2:= L2;
         Aurkitua := False;
         handi:= false;
        WHILE Lag1 /= NULL LOOP
           WHILE Lag2/= NULL and not aurkitua and not handi LOOP
              IF Lag1.Info = Lag2.Info THEN
                  Txertatu_Ordenan(L,Lag1.Info);
                  Aurkitua:= True;
               ELSIF Lag2.Info > Lag1.Info THEN
                  Handi:= true;
               END IF;
               Lag2:= Lag2.Hurrengoa;
            END LOOP;
            Lag1:= Lag1.Hurrengoa;
            Lag2:= L2;
            Aurkitua:= False;
            handi:=false;
         END LOOP;
      END IF;
  end Ebaki;

end Oso_Lista_Ordenatuak;
