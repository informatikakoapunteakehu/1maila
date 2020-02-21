with Ada.Integer_Text_IO, Ada.Text_IO;
procedure Idatzi_Osoa  (N : in Integer) is

   -- Aurrebaldintza:
   --    N (zenb. osoa)
   -- Postbaldintza:
   --    G = <N> (G irteera estandarra da)
   --    Oharra: N-ren ondoren zuriune bat idazten da

begin
   Ada.Integer_Text_IO.Put (Item => N, Width => 1);
   Ada.Text_IO.Put (" ");
end Idatzi_Osoa;
