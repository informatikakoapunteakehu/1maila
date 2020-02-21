WITH Irakurri_Osoa;
WITH Idatzi_Katea;
with Ada.Float_Text_IO;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Irakasgaien_Estatistikak_Lortu IS

   ----------------------------------------------
   -- KONSTANTE- ETA MOTA-DEFINIZIO LAGUNGARRIAK:
   ----------------------------------------------

   TYPE Irakasgaiak IS (AM,KTO,MD,OP,SDDO);
   TYPE Irakasgaia_Bektore IS ARRAY (Irakasgaiak) OF Integer;
   TYPE Portzentajea_Bektore IS ARRAY (Irakasgaiak) OF Float;
   PACKAGE Irakasgaiak_IO IS NEW Ada.Text_IO.Enumeration_IO(Irakasgaiak);
   USE Irakasgaiak_IO;

   -----------------------------
   -- AZPIPROGRAMA LAGUNGARRIAK:
   -----------------------------



   ------------------------------------------
   -- LABORATEGI-SAIO HONETAKO AZPIPROGRAMAK:
   ------------------------------------------
   --Irakurri-erreala propioa:

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


   -- ***  Datuak_Kargatu  prozedura

   PROCEDURE Datuak_Kargatu (
         B : IN OUT Irakasgaia_Bektore) IS
      -- Aurrebaldintza:
      -- B (irakasgaia-bektorea).
      -- Postbaldintza:
      -- B-ren osagaietan sarrera estandarretik lortutako balioak esleitu dira
      Datua : Integer;
   BEGIN
      FOR I IN B'First..B'Last LOOP
         Irakurri_osoa(Datua);
         B(I):= Datua;
      END LOOP;
   END;

   -- ***  Portzentajea_Kalkulatu  prozedura
   PROCEDURE Portzentajea_Kalkulatu (
         A,
         B : IN     Irakasgaia_Bektore;
         C :    OUT Portzentajea_Bektore) IS
      -- Aurrebaldintza:
      -- A, B (irakasgaia-bektorea), beren osagai guztiak > 0.
      -- Postbaldintza:
      -- C-ren i osagaian (non i in (AM, KTO, MD, OP, SDDO)) balioa honakoa
      -- da: (A(i)/B(i))*100


   BEGIN
      for I in a'first..A'Last LOOP
         C(I):= Float(B(I))/Float(A(I)) * 100.00;
      END LOOP;
   END;


   -- ***  Datuak_Pantailaratu prozedura


   PROCEDURE Datuak_Pantailaratu (
         B : IN     Portzentajea_Bektore) IS
      -- Aurrebaldintza:
      -- B (portzentajea-bektorea).
      -- Postbaldintza:
      -- B-ren osagaietako balioak pantailan idazten dira, osagaiaren
      -- indizea eta bere balioa, era honetara: i: balioa (non i in (AM,
      -- KTO, MD, OP, SDDO))
      Balioa: Float;
   BEGIN
      For I in B'first..B'Last LOOP
         Balioa:= B(I);
         Put(I);
         Idatzi_Katea(" -ko portzentaia hau da:");
         Idatzi_Erreala1(Balioa);
         IDatzi_katea("%");
         Idatzi_Katea("");
      END LOOP;
   END;


   ---------------------------------------------------------------------
   -- *** AZPIPROGRAMEN DEIETAN ERABILI BEHARREKO ALDAGAIEN ERAZAGUPENA:
   ---------------------------------------------------------------------
   -- Aurrebaldintza:
      -- F=<m1, m2, m3, m4, m5>, <r1, r2, r3, r4, r5>, <a1, a2, a3, a4, a5>,
      -- hiru zenbaki sekuentzia, non guztiak positiboak (/=0) eta
      -- (AM, KTO, MD, OP, SDDO)) bost irakasgaiei dagozkien datuak diren
      -- m, r eta a zenbakiek matrikula kopurua, azterketara aurkeztutako
      -- kopurua, eta gainditutakoen kopurua adierazten duten, hurrenez
      -- hurren
   -- Postbaldintza:
      -- G=<i1, b1,..., i5, b5, i1, c1,..., i5, c5, i1, d1,..., d5>
      -- non i irakasgaiaren kodea den (hauetako bat: AM, KTO, MD, OP, SDDO),
      -- b, c eta d honako balioak diren, hurrenez hurren:
      -- Ebaluazio tasa: matrikulatuen artetik aurkeztutakoen portzentajea
      -- Arrakasta tasa: aurkeztutakoen artetik gainditutakoen portzentajea
      -- Errendimendu tasa: matrikulatuen artetik gainditutakoen portzentajea


   Matrikula, Aurkeztuak, Gainditu: Irakasgaia_Bektore;
   Ebaluazio_Tasa,Arrakasta_Tasa,Errendimendu_Tasa: Portzentajea_Bektore;
BEGIN

-- datuen irakurketa
   Idatzi_Katea ("Idatzi (AM, KTO, MD, OP, SDDO) irakasgaien matrikula kopuruak:");
   Datuak_Kargatu(Matrikula);
   Idatzi_Katea ("Idatzi (AM, KTO, MD, OP, SDDO) irakasgaietan azterketetara aurkeztutako kopurua:");
   Datuak_Kargatu(Aurkeztuak);
   Idatzi_Katea ("Idatzi (AM, KTO, MD, OP, SDDO) irakasgaien gainditutako kopurua");
   Datuak_kargatu(Gainditu);


   --Tasa desberdinen kalkulua egitea;

   Portzentajea_Kalkulatu (Matrikula,Aurkeztuak,Ebaluazio_Tasa);
   Portzentajea_Kalkulatu (Aurkeztuak, Gainditu, Arrakasta_Tasa);
   Portzentajea_Kalkulatu(Matrikula, Gainditu, Errendimendu_Tasa);

   -- emaitzen pantailaratzea

   Idatzi_Katea("");

   Idatzi_Katea ("--------------");
   Idatzi_Katea ("Ebaluazio tasa:");
   Idatzi_Katea ("--------------");
   Datuak_Pantailaratu(ebaluazio_tasa);
   Idatzi_Katea("");

   Idatzi_Katea ("--------------");
   Idatzi_Katea("Arrakasta tasa");
   Idatzi_Katea ("--------------");
   Datuak_Pantailaratu(Arrakasta_tasa);
   Idatzi_Katea("");

   Idatzi_Katea ("--------------");
   Idatzi_Katea("Errendimendu tasa");
   Idatzi_Katea ("--------------");
   Datuak_Pantailaratu(Errendimendu_Tasa);

END;
