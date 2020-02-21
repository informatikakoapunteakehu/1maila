package Oso_Lista_Ordenatuak is

   type Lista is private;

   procedure Hutsa_Sortu (
         L :    out Lista);
   -- Postbaldintza: L (oso-lista) hutsik dago

   procedure Idatzi (
         L : in     Lista);
   -- Aurrebaldintza: L (oso-lista)
   -- Postbaldintza: G (irteera estandarreko sekuentzia), non L-ko
   --                zenbakiak baitaude

   procedure Kargatu_Ordenatuta (
         L          :    out Lista;
         Fitx_Izena : in     String);
   -- Aurrebaldintza: Fitx_Izena, direktorioan dagoen testu-fitxategi
   --                 baten izena; fitxategi horrek oso-sekuentzia bat du
   --                 barruan (oso-sekuentzia horretan ez dago salataririk,
   --                 hots, ez dago sekuentzia-amaiera salatzen duen ezer)
   -- Postbaldintza: L (oso-lista), non Fitx_Izena izeneko fitxategiko
   --                zenbaki guztiak baitaude, ordena goranzkoan
   -- Oharra: Zenbakiak ordenan txertatzeko, paketeko Txertatu_Ordenan
   --         eragiketaz baliatu behar da

   procedure Txertatu_Ordenan (
         L : in out Lista;
         Z : in     Integer);
   -- Aurrebaldintza: L (oso-lista), gorantz ordenatua
   --                 Z (zenb. oso), txertatu nahi dena
   -- Postbaldintza: irteerako L listako lehen zenbakia Z da,
   --                eta ondotik sarrerako L-n zeudenak daude

   procedure Txertatu_Bukaeran (
         L : in out Lista;
         Z : in     Integer);
   -- Aurrebaldintza : L (oso - lista) Z (zenb. oso), txertatu nahi dena
   -- Postbaldintza : irteerako L listako azken zenbakia Z da, eta
   --                 aurretik sarrerako L - n zeudenak daude

   function Zenbakiaren_Posizioa (
         L : in     Lista;
         Z : in     Integer)
     return Natural;
   -- Aurrebaldintza: L (oso-lista), gorantz ordenatua
   --                 Z (oso), bilatu nahi dena
   -- Postbaldintza: emaitza = Z-ren lehen agerpenaren posizioa L-n,
   --                          Z L-n baldin badago; 0, bestela

   procedure Ebaki (
         L1,
         L2 : in     Lista;
         L  :    out Lista);
   -- Aurrebaldintza:
   --    L1, L2 (oso-lista), gorantz ordenatuak
   -- Postbaldintza:
   --    L (oso-lista), non L1-en zein L2-n (bietan) dauden zenbakiak
   --       baitaude, goranzko ordenan

private

   type Nodo;
   type Lista is access Nodo;
   type Nodo is
      record
         Info      : Integer;
         Hurrengoa : Lista;
      end record;

end Oso_Lista_Ordenatuak;
