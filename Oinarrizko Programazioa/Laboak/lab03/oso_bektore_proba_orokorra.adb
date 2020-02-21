with Irakurri_Osoa, Idatzi_Osoa;
with Idatzi_Katea;
with Lehena_Da;
procedure Oso_Bektore_Proba_Orokorra is

   ----------------------------------------------
   -- KONSTANTE- ETA MOTA-DEFINIZIO LAGUNGARRIAK:
   ----------------------------------------------

   Tamaina : constant Positive := 10;
   type Oso_Bektore is array (1 .. Tamaina) of Integer;


   -----------------------------
   -- AZPIPROGRAMA LAGUNGARRIAK:
   -----------------------------

      procedure Irakurri_Oso_Bektorea (
            B :    out Oso_Bektore) is

         -- Aurre: F = <n1, n2... n10> (oso-sekuentzia).
         --        B bektoreko osagai kopurua eta sekuentziarena
         --          berdinak dira (10).
         -- Post:  B bektoreko osagaiak F sekuentziako 10 zenbakiak dira,
         --          hurrenez hurren

         X : Integer;

      begin
         Idatzi_Katea ("Idatzi bektoreko 10 osagaien balioak:");
         for I in B'First .. B'Last loop
            Irakurri_Osoa (X);
            B (I) := X;
         end loop;
      end Irakurri_Oso_Bektorea;

   procedure Idatzi_Oso_Bektorea (
         B : in     Oso_Bektore) is
      -- Aurre: B, idatzi beharreko bektorea
      -- Post: G = <n1, n2... n10>, B-ko osagaiak
      --       (G irteera estandarra da)
   begin
      for I in B'First .. B'Last loop
         Idatzi_Osoa (B (I));
      end loop;
      Idatzi_Katea (" ");
   end Idatzi_Oso_Bektorea;


   ------------------------------------------
   -- LABORATEGI-SAIO HONETAKO AZPIPROGRAMAK:
   ------------------------------------------

   -- *** Lehen_Zenbaki_Lehenaren_Posizioa_Balioa_Lortu prozedura:

PROCEDURE Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu
(B : in Oso_Bektore; Pos : out Natural; Balioa : out Integer) is
-- Aurrebaldintza:
   -- B (oso-bektorea), non edozein I-rentzat, 1 <= I <= 10, B (I) > 0.
-- Postbaldintza:
   -- B-n zenbaki lehenik baldin badago:
      -- Pos da B-ko lehen zenbaki lehenaren posizioa;
      -- Balioa da B-ko lehen zenbaki lehena;
   -- bestela:
      -- Pos = 0.
   I: natural;
BEGIN
   Pos:= 0;
   Balioa:= 0;
   I:= B'First;
   WHILE I <= B'Last and pos= 0 LOOP
      IF Lehena_Da(B(I)) THEN
         Pos:= I;
         Balioa:= B(I);
      END IF;
      I:= I+1;
   END LOOP;
END;

   -- *** Denak_Zenbaki_Lehenak funtzioa:

function Denak_Zenbaki_Lehenak (B : in Oso_Bektore) return Boolean is
-- Aurrebaldintza:
   -- B (oso-bektorea), non edozein I-rentzat, 1 <= I <= 10, B (I) > 0.
-- Postbaldintza:
   -- emaitza = True, B-ko zenbaki guztiak lehenak baldin badira;
   -- emaitza = False, bestela.
   aurkitua, emaitza: boolean;
   I: natural;
BEGIN
   I:= B'First;
   Aurkitua:= False;
   WHILE I <= B'Last AND Aurkitua = False LOOP
      IF Lehena_Da(B(I)) = False THEN
         Aurkitua := True;
      END IF;
      I:= I+1;
   END loop;
      IF Aurkitua = False THEN
         Emaitza:= True;
      ELSE
         Emaitza := False;
      END IF;
      RETURN Emaitza;
END;


-- *** Atzekoz_Aurrera_Jarri prozedura:

procedure Atzekoz_Aurrera_Jarri (B : in out Oso_Bektore) is
-- Aurrebaldintza:
   -- B, alderantzikatu beharreko bektorea.
-- Postbaldintza:
   -- B, non osagaiak tokiz aldatu baitira, eta orain atzekoz
   -- aurrera daude: lehena azkenarekin trukatu da, bigarrena
   -- azkenaurrekoarekin, eta horrela hurrenez hurren.

   Hasiera, Amaiera, A, C: Integer;

BEGIN
   Hasiera:= B'First;
   Amaiera:= B'last;
   WHILE Hasiera < amaiera LOOP
      A:= B(Hasiera);
      C:= B(Amaiera);
      B(Amaiera):= A;
      B(Hasiera):= C;
      Hasiera:= Hasiera +1;
      Amaiera:= Amaiera -1;
   END LOOP;
END;


   -- *** Igarrenean_Txertatu_Desplazatuz prozedura:

procedure Igarrenean_Txertatu_Desplazatuz
(B: in out Oso_Bektore; Pos : in Positive; X: in Integer) is
-- Aurrebaldintza:
-- B bektorea, non txertatu nahi den X Pos posizioan;
-- Pos posizioa, non B'First <= Pos <= B'Last;
-- X zenbakia, B-n txertatu beharrekoa.
-- Postbaldintza:
-- B, non B (Pos) = X, eta Pos-etik aurrerako guztiak posizio
-- bat eskuinera desplazatu diren; B-ko azken posizioan
-- zegoen elementua galdu egin da.

   I, Aurrekora:Integer;
BEGIN
   I:= B'last;
   WHILE I > Pos LOOP
      Aurrekora:=B(I-1);
      B(I):=Aurrekora;
      I:= I-1;
   END LOOP;
   B(Pos):=X;
END;


   ---------------------------------------------------------------------
   -- *** AZPIPROGRAMEN DEIETAN ERABILI BEHARREKO ALDAGAIEN ERAZAGUPENA:
   ---------------------------------------------------------------------

   X            : Integer;
   ZB           : Oso_Bektore;
Posizioa     : Natural;
Pos, Balioa: Integer;

begin
   -- ========================
   -- 1. proba
   -- ========================

   Idatzi_Katea (" ");
   Idatzi_Katea ("----------------------");
   Idatzi_Katea (" ");
   ZB := (3, 13, 17, 23, 37, 53, 113, 83, 2, 1);
   Idatzi_Katea ("Zenbaki-bektorea:");
   Idatzi_Oso_Bektorea (ZB);

   Idatzi_Katea ("Lehen zenbaki lehenaren posizioa eta balioa (1, 3):");
   -- deitu zure  azpiprogramari eta idatzi lortutako emaitza:
   Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu(ZB, Pos, Balioa);
   IDatzi_Osoa(Pos);
   Idatzi_Osoa(Balioa);

   Idatzi_Katea (" ");
   Idatzi_Katea ("Bektoreko zenbaki guztiak lehenak dira? (BAI):");
   -- deitu zure azpiprogramari eta idatzi "BAI" edo "EZ":
   IF Denak_Zenbaki_Lehenak(ZB) = False THEN
      Idatzi_Katea("EZ");
   ELSE
      Idatzi_Katea("BAI");
   END IF;


   -- ========================
   -- 2. proba
   -- ========================

   Idatzi_Katea (" ");
   Idatzi_Katea ("----------------------");
   Idatzi_Katea (" ");
   ZB := (10, 20, 30, 40, 50, 60, 17, 80, 90, 10);
   Idatzi_Katea ("Zenbaki-bektorea:");
   Idatzi_Oso_Bektorea (ZB);

   Idatzi_Katea ("Lehen zenbaki lehenaren posizioa eta balioa (7, 17):");
   -- deitu zure azpiprogramari eta idatzi lortutako emaitza:
   Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu(ZB, Pos, Balioa);
   IDatzi_Osoa(Pos);
   Idatzi_Osoa(Balioa);

   Idatzi_Katea (" ");
   Idatzi_Katea ("Bektoreko zenbaki guztiak lehenak dira? (EZ):");
   -- deitu zure azpiprogramari eta idatzi "BAI" edo "EZ":
   IF Denak_Zenbaki_Lehenak(ZB) = False THEN
      Idatzi_Katea("EZ");
   ELSE
      Idatzi_Katea("BAI");
   END IF;



   -- ========================
   -- 3. proba
   -- ========================

   Idatzi_Katea (" ");
   Idatzi_Katea ("----------------------");
   Idatzi_Katea (" ");
   ZB := (10, 20, 30, 40, 50, 60, 400, 80, 90, 10);
   Idatzi_Katea ("Zenbaki-bektorea:");
   Idatzi_Oso_Bektorea (ZB);

   Idatzi_Katea ("Lehen zenbaki lehenaren posizioa eta balioa (0, 0):");
   -- deitu zure azpiprogramari eta idatzi lortutako emaitza:
    Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu(ZB, Pos, Balioa);
   IDatzi_Osoa(Pos);
   Idatzi_Osoa(Balioa);


   Idatzi_Katea (" ");
   Idatzi_Katea ("Bektoreko zenbaki guztiak lehenak dira? (EZ):");
   -- deitu zure azpiprogramari eta idatzi "BAI" edo "EZ":
   IF Denak_Zenbaki_Lehenak(ZB) = False THEN
      Idatzi_Katea("EZ");
   ELSE
      Idatzi_Katea("BAI");
   END IF;



   -- ========================
   -- 4. proba
   -- ========================

   Idatzi_Katea (" ");
   Idatzi_Katea ("----------------------");
   Idatzi_Katea (" ");
   ZB := (10, 20, 30, 40, 50, 60, 170, 80, 90, 13);
   Idatzi_Katea ("Zenbaki-bektorea:");
   Idatzi_Oso_Bektorea (ZB);

   Idatzi_Katea ("Lehen zenbaki lehenaren posizioa eta balioa (10, 13):");
   -- deitu zure azpiprogramari eta idatzi lortutako emaitza:
    Lehen_Zenbaki_Lehenaren_Pos_Eta_Balioa_Lortu(ZB, Pos, Balioa);
   IDatzi_Osoa(Pos);
   Idatzi_Osoa(Balioa);


   Idatzi_Katea (" ");
   Idatzi_Katea ("Bektoreko zenbaki guztiak lehenak dira? (EZ):");
   -- deitu zure azpiprogramari eta idatzi "BAI" edo "EZ":
   IF Denak_Zenbaki_Lehenak(ZB) = False THEN
      Idatzi_Katea("EZ");
   ELSE
      Idatzi_Katea("BAI");
   END IF;

   Idatzi_Katea (" ");
   Idatzi_Katea ("Bektorea atzekoz aurrera:");
   -- deitu zure azpiprogramari eta idatzi bektorea:
   Atzekoz_Aurrera_Jarri(ZB);
   Idatzi_Oso_Bektorea(ZB);

   Idatzi_Katea (" ");
   Idatzi_Katea ("Azkenik, txertaketa probatuko dugu:");
   Idatzi_Katea ("OHARRA: 1, 7 eta 10 posizioekin probatu behar da!!!");

   for I in 1 .. 3 loop
      Idatzi_Katea ("Sartu non txertatu nahi duzun zenbakia (posizioa):");
      Irakurri_Osoa (Posizioa);
      Idatzi_Katea ("Sartu txertatu beharreko zenbakia:");
      Irakurri_Osoa (X);
      -- deitu zure azpiprogramari eta idatzi bektorea (txertatu eta gero):
      Igarrenean_Txertatu_Desplazatuz(ZB, Posizioa, X);
      Idatzi_Oso_Bektorea(ZB);

   end loop;

end Oso_Bektore_Proba_Orokorra;
