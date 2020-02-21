package Oso_Listak is

   type Lista is private;
   Max : constant Positive := 10;

   procedure Hasieratu (
         L : in out Lista);
   -- Aurrebaldintza: L (oso-lista)
   -- Postbaldintza: L (oso-lista) hutsik dago

   procedure Txertatu_Bukaeran (
         L : in out Lista;
         X : in     Integer);
   -- Aurrebaldintza:
   --    L (oso-lista estatiko), zeinen osagai kopurua < Max
   --    X (zenb. oso), L-ren bukaeran txertatu nahi dena
   -- Post: L listako azken osagaia X da, eta aurretik
   --       daude L-n sarreran zeudenak

   procedure Idatzi (
         L : in     Lista);
   -- Aurrebaldintza: L (oso-lista estatiko)
   -- Postbaldintza: G (irteera estandarreko sekuentzia), non L-ko
   --                osagaiak baitaude

   procedure Fusionatu (
         L1,
         L2 : in     Lista;
         L  :    out Lista);
   -- Aurrebaldintza: L1 eta L2 (oso-lista estatikoak), ordenatuta
   --                 txikienetik handienera;
   --                 L1-en osagai kop. + L2-ren osagai kop. <= Max
   -- Postbaldintza: L listan L1 eta L2 listetako osagai guztiak
   --                daude, eta ordenatuta.

   procedure Txertatu_Y_Xren_Atzetik (
         L : in out Lista;
         Y,
         X : in     Integer);
   -- Aurrebaldintza:
   --    L (oso-lista estatiko), zeinen osagai kopurua < Max
   --    Y (zenb. oso), X zenb. osoaren atzetik txertatu nahi dena
   -- Postbaldintza:
   --    irteerako L-n Y dago lehen X-ren atzetik, X sarrerako L-n
   --       baldin badago (X eta X-ren aurretik zeudenak, sarrerako
   --       L-n zeuden posizio berean daude irteerako L-n;
   --       X-ren atzetik zeudenak, berriz, Y-ren atzetik daude
   --       irteerako L-n)
   --    irteerako L-n Y da azkena, X sarrerako L-n ez baldin
   --       badago (sarrerako L-ko guztiak posizio berean daude
   --       irteerako L-n)

private

   subtype Oso0_Max is Natural range 0 .. Max;
   subtype Oso1_Max is Positive range 1 .. Max;
   type Taula is array (Oso1_Max) of Integer;
   type Lista is
      record
         Info   : Taula;
         Zenbat : Oso0_Max;
      end record;

end Oso_Listak;
