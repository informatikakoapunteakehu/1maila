with Ada.Float_Text_IO;
procedure Idatzi_Erreala1 (N : in Float) is
   -- Aurrebaldintza:
   --    N (zenb. erreala)
   -- Postbaldintza:
   --    G = <N>
begin
   Ada.Float_Text_IO.Put (Item => N,
      Exp => 0,
      aft=> 2);
end Idatzi_Erreala1;
