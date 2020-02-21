with idatzi_katea, Irakurri_osoa;
procedure Irakurri_Oso_Bektorea (B :    out Oso_Bektore) is

         -- Aurre: F = <n1, n2... n10> (oso-sekuentzia).
         --        B bektoreko osagai kopurua eta sekuentziarena
         --          berdinak dira (10).
         -- Post:  B bektoreko osagaiak F sekuentziako 10 zenbakiak dira,
         --          hurrenez hurren

   X : Integer;
   Tamaina : constant Positive := 10;
   type Oso_Bektore is array (1 .. Tamaina) of Integer;

      begin
         Idatzi_Katea ("Idatzi bektoreko 10 osagaien balioak:");
         for I in B'First .. B'Last loop
            Irakurri_Osoa (X);
            B (I) := X;
         end loop;
      end Irakurri_Oso_Bektorea;


