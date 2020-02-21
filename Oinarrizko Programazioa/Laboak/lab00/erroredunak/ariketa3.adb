with Irakurri_Osoa;
with Idatzi_Katea, Idatzi_Osoa;

procedure ariketa3 is

   -- Aurrebaldintza:
   --   F = <n> (n, zenb. osoa)
   -- Postbaldintza:
   --   G = <p> (zenb. osoa), non:
   --     p = 2*n

   N, B : Integer;
   multiploa : constant Integer := 3;

begin

   -- irakurri zenbakia
   Idatzi_Katea ("Idatzi zenbaki oso bat eta sakatu <RETURN>:");
   Irakurri_Osoa (N);

   -- kalkulatu bere multiploa eta idatzi
   multiploa := 4;

   B := multiploa * N;

   Idatzi_Katea ("Bere multiploa: ");

   Idatzi_Osoa (B);

end ariketa3;


