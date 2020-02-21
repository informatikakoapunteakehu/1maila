with Oso1_100_Multzoak;
with Idatzi_Katea, Idatzi_Osoa;
procedure Probatu_Oso_Multzoak is

   Multzoa1,
   Multzoa2,
   Multzoa3 : Oso1_100_Multzoak.Oso1_100_Multzo;

begin

   Idatzi_Katea ("KARDINALA, HUTSA DA ETA HANDIENA: PROBAK");
   Idatzi_Katea ("----------------------------------------");
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Hasieratu (Multzoa1);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa1, 4);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa1, 40);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa1, 41);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa1, 100);
   Idatzi_Katea ("Multzoa1 (hasieratuta eta balioak emanda): ");
   Oso1_100_Multzoak.Idatzi (Multzoa1);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Hasieratu (Multzoa2);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 4);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 2);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 1);
   Idatzi_Katea ("Multzoa2 (hasieratuta eta balioak emanda): ");
   Oso1_100_Multzoak.Idatzi (Multzoa2);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Hasieratu (Multzoa3);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa3, 1);
   Idatzi_Katea ("Multzoa3 (hasieratuta eta balioak emanda): ");
   Oso1_100_Multzoak.Idatzi (Multzoa3);
   Idatzi_Katea ("");

   Idatzi_Katea ("Multzoa1-en kardinala [4]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Kardinala (Multzoa1));
   Idatzi_Katea ("");

   Idatzi_Katea ("Multzoa2-ren kardinala [3]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Kardinala (Multzoa2));
   Idatzi_Katea ("");

   Idatzi_Katea ("");
   Idatzi_Katea ("Multzoa1-eko elementurik handiena [100]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Elementurik_Handiena (Multzoa1));
   Idatzi_Katea ("");

   Idatzi_Katea ("Multzoa2-ko elementurik handiena [4]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Elementurik_Handiena (Multzoa2));
   Idatzi_Katea ("");

   Idatzi_Katea ("Multzoa3-ko elementurik handiena [1]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Elementurik_Handiena (Multzoa3));
   Idatzi_Katea ("");

   Idatzi_Katea ("");
   Oso1_100_Multzoak.Hasieratu (Multzoa2);
   Idatzi_Katea ("Multzoa2 (hasieratuta): ");
   Oso1_100_Multzoak.Idatzi (Multzoa2);
   Idatzi_Katea ("");

   if Oso1_100_Multzoak.Hutsa_Da (Multzoa1) then
      Idatzi_Katea ("Multzoa1 multzo hutsa da.");
   else
      Idatzi_Katea ("Multzoa1 ez da multzo hutsa.");
   end if;
   Idatzi_Katea ("");

   if Oso1_100_Multzoak.Hutsa_Da (Multzoa2) then
      Idatzi_Katea ("Multzoa2 multzo hutsa da.");
   else
      Idatzi_Katea ("Multzoa2 ez da multzo hutsa.");
   end if;
   Idatzi_Katea ("");

   Idatzi_Katea ("");
   Idatzi_Katea ("Multzoa2-ren kardinala [0]:");
   Idatzi_Osoa (Oso1_100_Multzoak.Kardinala (Multzoa2));
   Idatzi_Katea ("");

   Idatzi_Katea ("");
   Idatzi_Katea ("");
   Idatzi_Katea ("MULTZOEN ARTEKO EBAKIDURA: PROBAK");
   Idatzi_Katea ("---------------------------------");
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Ebaki (Multzoa1, Multzoa2, Multzoa3);
   Idatzi_Katea ("Multzoa3 (Multzoa1 eta Multzoa2-ren arteko ebakidura) [{}]:");
   Oso1_100_Multzoak.Idatzi (Multzoa3);

   Idatzi_Katea ("");
   Oso1_100_Multzoak.Ebaki (Multzoa2, Multzoa1, Multzoa3);
   Idatzi_Katea ("Multzoa3 (Multzoa2 eta Multzoa1-en arteko ebakidura) [{}]:");
   Oso1_100_Multzoak.Idatzi (Multzoa3);

   Oso1_100_Multzoak.Hasieratu (Multzoa2);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 4);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 2);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 41);
   Idatzi_Katea ("");
   Idatzi_Katea ("Multzoa2 (hasieratuta eta balioak emanda): ");
   Oso1_100_Multzoak.Idatzi (Multzoa2);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Ebaki (Multzoa1, Multzoa2, Multzoa3);
   Idatzi_Katea ("Multzoa3 (Multzoa1 eta Multzoa2-ren arteko ebakidura) [{4 41 }]:");
   Oso1_100_Multzoak.Idatzi (Multzoa3);

   Oso1_100_Multzoak.Hasieratu (Multzoa2);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 25);
   Oso1_100_Multzoak.Elementua_Gehitu (Multzoa2, 14);
   Idatzi_Katea ("");
   Idatzi_Katea ("Multzoa2 (hasieratuta eta balioak emanda): ");
   Oso1_100_Multzoak.Idatzi (Multzoa2);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Ebaki (Multzoa1, Multzoa2, Multzoa3);
   Idatzi_Katea ("Multzoa3 (Multzoa1 eta Multzoa2-ren arteko ebakidura) [{}]:");
   Oso1_100_Multzoak.Idatzi (Multzoa3);

   Idatzi_Katea ("");
   Oso1_100_Multzoak.Hasieratu (Multzoa1);
   Idatzi_Katea ("Multzoa1 (hasieratuta): ");
   Oso1_100_Multzoak.Idatzi (Multzoa1);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Hasieratu (Multzoa2);
   Idatzi_Katea ("Multzoa2 (hasieratuta): ");
   Oso1_100_Multzoak.Idatzi (Multzoa2);
   Idatzi_Katea ("");

   Oso1_100_Multzoak.Ebaki (Multzoa1, Multzoa2, Multzoa3);
   Idatzi_Katea ("Multzoa3 (Multzoa1 eta Multzoa2-ren arteko ebakidura) [{}]:");
   Oso1_100_Multzoak.Idatzi (Multzoa3);

end Probatu_Oso_Multzoak;

