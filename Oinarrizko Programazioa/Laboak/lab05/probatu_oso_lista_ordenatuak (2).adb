with Oso_Lista_Ordenatuak;
with Idatzi_Katea, Idatzi_Osoa;
procedure Probatu_Oso_Lista_Ordenatuak is

   Lista1,
   Lista2,
   Lista3 : Oso_Lista_Ordenatuak.Lista;
   Pos    : Natural;

begin

   -- hasieratzeak eta Kargatu_Ordenatuta-ren probak -----------------

   Idatzi_Katea ("-- Kargatu_Ordenatuta probatzen ---------------");
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Kargatu_Ordenatuta (Lista1, "zenbakiak.txt");
   Idatzi_Katea ("Lista1 (fitxategitik kargatuta: EGIAZTATU ONDO DAGOELA!): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista1);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Hutsa_Sortu (Lista2);
   Idatzi_Katea ("Lista2 (hasieratuta, hutsik): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista2);
   Idatzi_Katea ("");


   -- Zenbakiaren_Posizioa probatzeko -------------------------------

   Idatzi_Katea ("");
   Idatzi_Katea ("-- Zenbakiaren_Posizioa probatzen -------------");
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, 333);
   Idatzi_Katea ("");
   Idatzi_Katea ("333 zenbakiaren posizioa Lista1 listan [14]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, -500);
   Idatzi_Katea ("");
   Idatzi_Katea ("-500 zenbakiaren posizioa Lista1 listan [1]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, 2);
   Idatzi_Katea ("");
   Idatzi_Katea ("2 zenbakiaren posizioa Lista1 listan [5]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, 34);
   Idatzi_Katea ("");
   Idatzi_Katea ("34 zenbakiaren posizioa Lista1 listan [8]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, -1348);
   Idatzi_Katea ("");
   Idatzi_Katea ("-1348 zenbakiaren posizioa Lista1 listan [0]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, 348);
   Idatzi_Katea ("");
   Idatzi_Katea ("348 zenbakiaren posizioa Lista1 listan [0]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista1, 17);
   Idatzi_Katea ("");
   Idatzi_Katea ("17 zenbakiaren posizioa Lista1 listan [0]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");

   Pos := Oso_Lista_Ordenatuak.Zenbakiaren_Posizioa (Lista2, 3248);
   Idatzi_Katea ("");
   Idatzi_Katea ("3248 zenbakiaren posizioa Lista2 listan [0]:");
   Idatzi_Osoa (Pos);
   Idatzi_Katea ("");


   -- Ebaki probatzeko -------------------------------------

   Idatzi_Katea ("");
   Idatzi_Katea ("-- Ebaki probatzen ---------------------------");
   Idatzi_Katea ("");

   Idatzi_Katea ("Lista1: ");
   Oso_Lista_Ordenatuak.Idatzi (Lista1);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista2: ");
   Oso_Lista_Ordenatuak.Idatzi (Lista2);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista1, Lista2, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista1-en eta Lista2-ren ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista2, Lista1, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista2-ren eta Lista1-en ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Idatzi_Katea ("-----------------------------------------");
   Idatzi_Katea ("");

   Idatzi_Katea ("Lista1: ");
   Oso_Lista_Ordenatuak.Idatzi (Lista1);
   Idatzi_Katea ("");
   Oso_Lista_Ordenatuak.Txertatu_Bukaeran (Lista2, -500);
   Oso_Lista_Ordenatuak.Txertatu_Bukaeran (Lista2, 35);
   Oso_Lista_Ordenatuak.Txertatu_Bukaeran (Lista2, 333);
   Oso_Lista_Ordenatuak.Txertatu_Bukaeran (Lista2, 335);
   Idatzi_Katea ("Lista2 (balioak aldatuta): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista2);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista1, Lista2, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista1-en eta Lista2-ren ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista2, Lista1, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista2-ren eta Lista1-en ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Idatzi_Katea ("-----------------------------------------");
   Idatzi_Katea ("");

   Idatzi_Katea ("Lista1: ");
   Oso_Lista_Ordenatuak.Idatzi (Lista1);
   Idatzi_Katea ("");
   Oso_Lista_Ordenatuak.Txertatu_Ordenan (Lista2, 45);
   Oso_Lista_Ordenatuak.Txertatu_Ordenan (Lista2, 10);
   Oso_Lista_Ordenatuak.Txertatu_Ordenan (Lista2, 67);
   Idatzi_Katea ("Lista2 (balioak aldatuta): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista2);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista1, Lista2, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista1-en eta Lista2-ren ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista2, Lista1, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista2-ren eta Lista1-en ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Idatzi_Katea ("-----------------------------------------");
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Hutsa_Sortu (Lista1);
   Idatzi_Katea ("Lista1 (hasieratuta, hutsik): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista1);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Hutsa_Sortu (Lista2);
   Idatzi_Katea ("Lista2 (hasieratuta, hutsik): ");
   Oso_Lista_Ordenatuak.Idatzi (Lista2);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista1, Lista2, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista1-en eta Lista2-ren ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

   Oso_Lista_Ordenatuak.Ebaki (Lista2, Lista1, Lista3);
   Idatzi_Katea ("");
   Idatzi_Katea ("Lista3, Lista2-ren eta Lista1-en ebakidura:");
   Oso_Lista_Ordenatuak.Idatzi (Lista3);
   Idatzi_Katea ("");

end Probatu_Oso_Lista_Ordenatuak;

