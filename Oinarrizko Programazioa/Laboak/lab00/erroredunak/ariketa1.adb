-- with Irakurri_Osoa;
-- with Idatzi_Katea, Idatzi_Osoa;

procedure ariketa1 is

   -- Aurrebaldintza:
   --   F = <n> (n, zenb. osoa)
   -- Postbaldintza:
   --   G = <p> (zenb. osoa), non:
   --     p = 2*n

   N, B : Integer;

begin

   -- irakurri zenbakia
   Idatzi_Katea ("Idatzi zenbaki oso bat eta sakatu <RETURN>:");
   Irakurri_Osoa (N);

   -- kalkulatu bere bikoitza eta idatzi

   B := 2*N;

   Idatzi_Katea ("Bere bikoitza: ");

   Idatzi_Osoa (B);

end ariketa1 ;


