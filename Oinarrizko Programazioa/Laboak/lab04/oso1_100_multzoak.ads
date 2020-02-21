package Oso1_100_Multzoak is

   type Oso1_100_Multzo is private;

   procedure Hasieratu (
         M : in out Oso1_100_Multzo);
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa)
   -- Postbaldintza: M ([1,100] tarteko zenbaki osoen multzoa) hutsik dago

   procedure Elementua_Gehitu (
         M : in out Oso1_100_Multzo;
         X : in     Integer);
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa)
   --                 X (zenb. oso), M-n gehitu nahi den elementua
   -- Postbaldintza: M multzoan X gehitu da

   procedure Idatzi (
         M : in     Oso1_100_Multzo);
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa)
   -- Postbaldintza: G (irteera estandarreko sekuentzia), non M-ko
   --                elementuak baitaude

   function Kardinala (
         M : in     Oso1_100_Multzo)
     return Natural;
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa)
   -- Postbaldintza: emaitza = M-ren elementu kopurua

   function Hutsa_Da (
         M : in     Oso1_100_Multzo)
     return Boolean;
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa)
   -- Postbaldintza: emaitza = True, bsb M multzo hutsa da

   function Elementurik_Handiena (
         M : in     Oso1_100_Multzo)
     return Integer;
   -- Aurrebaldintza: M ([1,100] tarteko zenbaki osoen multzoa),
   --      non M ez da multzo hutsa
   -- Postbaldintza: emaitza = M multzoko elementurik handiena

   procedure Ebaki (
         M1,
         M2 : in     Oso1_100_Multzo;
         M3 :    out Oso1_100_Multzo);
   -- Aurrebaldintza: M1 eta M2 ([1,100] tarteko zenbaki osoen multzoak)
   -- Postbaldintza: M3 ([1,100] tarteko zenbaki osoen multzoa),
   --                non M3 = M1 eta M2 multzoen ebakidura

private

   type Oso1_100_Multzo is array (1 .. 100) of Boolean;

end Oso1_100_Multzoak;
