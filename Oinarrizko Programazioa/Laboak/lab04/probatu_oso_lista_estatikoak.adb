with Oso_Listak;
with Idatzi_Katea;
procedure Probatu_Oso_Lista_Estatikoak is

   L1, L2, L3, L4 : Oso_Listak.Lista;

begin

   Idatzi_Katea ("LISTA-FUSIOEN PROBAK");
   Idatzi_Katea ("--------------------");
   Idatzi_Katea ("");

   Oso_Listak.Hasieratu (L1);
   Oso_Listak.Txertatu_Bukaeran (L1, 4);
   Oso_Listak.Txertatu_Bukaeran (L1, 40);
   Oso_Listak.Txertatu_Bukaeran (L1, 41);
   Oso_Listak.Txertatu_Bukaeran (L1, 145);
   Idatzi_Katea ("L1 (hasieratuta eta balioak emanda): ");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak.Hasieratu (L2);
   Oso_Listak.Txertatu_Bukaeran (L2, -4);
   Oso_Listak.Txertatu_Bukaeran (L2, -2);
   Oso_Listak.Txertatu_Bukaeran (L2, 0);
   Oso_Listak.Txertatu_Bukaeran (L2, 14);
   Idatzi_Katea ("L2 (hasieratuta eta balioak emanda): ");
   Oso_Listak.Idatzi (L2);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L1, L2, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L1 eta L2 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Oso_Listak.Hasieratu (L4);
   Idatzi_Katea ("");
   Idatzi_Katea ("L4 (hasieratuta): ");
   Oso_Listak.Idatzi (L4);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L1, L4, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L1 eta L4 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L4, L1, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L4 eta L1 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Oso_Listak.Hasieratu (L1);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (hasieratuta): ");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L1, L4, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L1 eta L4 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Oso_Listak.Hasieratu (L1);
   Oso_Listak.Txertatu_Bukaeran (L1, -400);
   Oso_Listak.Txertatu_Bukaeran (L1, -40);
   Oso_Listak.Txertatu_Bukaeran (L1, -35);
   Oso_Listak.Txertatu_Bukaeran (L1, -17);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (hasieratuta eta balioak emanda): ");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L1, L2, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L1 eta L2 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Oso_Listak.Fusionatu (L2, L1, L3);
   Idatzi_Katea ("");
   Idatzi_Katea ("L3 (L2 eta L1 fusionatzearen emaitza):");
   Oso_Listak.Idatzi (L3);
   Idatzi_Katea ("");

   Idatzi_Katea ("");
   Idatzi_Katea ("TXERTATZEEN PROBAK");
   Idatzi_Katea ("------------------");
   Idatzi_Katea ("");

   Oso_Listak. Txertatu_Y_Xren_Atzetik (L1, -38, -40);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (-38 -40ren atzetik txertatu eta gero):");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak. Txertatu_Y_Xren_Atzetik (L1, -100, -400);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (-100 -400en atzetik txertatu eta gero):");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak. Txertatu_Y_Xren_Atzetik (L1, 15, -17);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (15 -17ren atzetik txertatu eta gero):");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

   Oso_Listak. Txertatu_Y_Xren_Atzetik (L1, 10, -170);
   Idatzi_Katea ("");
   Idatzi_Katea ("L1 (10 -170en atzetik txertatu eta gero):");
   Oso_Listak.Idatzi (L1);
   Idatzi_Katea ("");

end Probatu_Oso_Lista_Estatikoak;

