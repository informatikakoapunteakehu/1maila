with Idatzi_Osoa, Idatzi_Karakterea, Idatzi_Katea;
package body Oso1_100_Multzoak is

   procedure Hasieratu (
         M : in out Oso1_100_Multzo) is
   begin
      for I in 1 .. 100 loop
         M (I) := False;
      end loop;
   end Hasieratu;

   procedure Elementua_Gehitu (
         M : in out Oso1_100_Multzo;
         X : in     Integer) is
   begin
      M (X) := True;
   end Elementua_Gehitu;

   procedure Idatzi (
      M : in     Oso1_100_Multzo)
         is
   begin
      Idatzi_Karakterea ('{');
      for I in 1 .. 100 loop
         if M (I) then Idatzi_Osoa (I);
         end if;
      end loop;
      Idatzi_Katea ("}");
   end Idatzi;

   function Kardinala (
         M : in     Oso1_100_Multzo)
         return Natural is

      Zenb:Integer;

   BEGIN
      zenb:=0;
      FOR I IN 1..M'Last LOOP
         IF M(I) THEN
            Zenb:= Zenb+1;
         END IF;
      END LOOP;
      return zenb;
   end Kardinala;

   function Hutsa_Da (
         M : in     Oso1_100_Multzo)
         RETURN Boolean IS

      Zenb:Integer;
      Hutsa:Boolean;

   BEGIN
      zenb:=0;
      FOR I IN 1..M'Last LOOP
         IF M(I) THEN
            Zenb:= Zenb+1;
         END IF;
      END LOOP;
      IF Zenb = 0 THEN
         Hutsa:= True;
      ELSE
         Hutsa:= False;
      END IF;
      return Hutsa;
   end Hutsa_Da;

   function Elementurik_Handiena (
         M : in     Oso1_100_Multzo)
         RETURN Integer IS

      Zenb: Integer;

   BEGIN
      zenb:=0;
      FOR I IN 1..M'Last LOOP
         IF M(I) THEN
            Zenb:= I;
         END IF;
      END LOOP;
      return zenb;
   end Elementurik_Handiena;

   procedure Ebaki (
         M1,
         M2 : in     Oso1_100_Multzo;
         M3 :    out Oso1_100_Multzo) is
   begin
      FOR I IN 1..M1'Last LOOP
         IF M1(I) AND M2(I) THEN
            M3(I):= True;
         ELSIF NOT M1(I) AND NOT M2(I) THEN
            M3(I):= False;
         END IF;
      END LOOP;

   end Ebaki;

end Oso1_100_Multzoak;
