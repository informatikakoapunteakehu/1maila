with Ada.Text_Io;
use Ada.Text_Io;

with defs_lab; use defs_lab;
with ordenatu_hautatuz, idatzi_Lista;

procedure proba_ordenatu_hautatuz is 
 -- este programa hace llamadas al subprograma ordenar_por_inserción
   -- para comprobar si su funcionamiento es correcto

Lista1: Osokoen_zerrenda;

begin
   Lista1.zenbakiak(1) := 1;
   Lista1.kopurua := 1;
   Put_line("proba1: elementu bakarreko bektorea: (1)");
   Put_line(" sarrerako lista: ");
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   put_line(" eta zure emaitza ");
   ordenatu_hautatuz(Lista1);
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   New_Line(3);
   Put_Line("Sakatu return jarraitzeko");
   Skip_Line;
   New_Line(3);


   Lista1.zenbakiak(1) := 3; Lista1.zenbakiak(2) := 1; Lista1.zenbakiak(3) := 4;
   Lista1.zenbakiak(4) := 8; Lista1.zenbakiak(5) := 6;
   Lista1.kopurua := 5;
   Put_line("proba2: hainbat zenbaki ez ordenatuez osatutako bektorea: (3 1 4 8 6)");
    Put_line(" sarrerako lista: ");
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   put_line(" eta zure emaitza ");
   ordenatu_hautatuz(Lista1);
   Idatzi_Lista(Lista1);
   Put_line(" da ");

   New_Line(3);
   Put_Line("Sakatu return jarraitzeko");
   Skip_Line;
   New_Line(3);


   Lista1.zenbakiak(1) := 3; Lista1.zenbakiak(2) := 1; Lista1.zenbakiak(3) := 4;
   Lista1.zenbakiak(4) := 8; Lista1.zenbakiak(5) := 6; Lista1.zenbakiak(6) := 23;
   Lista1.zenbakiak(7) := 2; Lista1.zenbakiak(8) := 13; Lista1.zenbakiak(9) := 25;
   Lista1.zenbakiak(10) := 7; 
   Lista1.kopurua:= 10;
   Put_line("proba3: hainbat zenbaki ez ordenatuez osatutako bektorea (erreserbatu dugun guztia beteta): (3 1 4 8 6 23 2 13 25 7)");
    Put_line(" sarrerako lista: ");
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   put_line(" eta zure emaitza ");
   ordenatu_hautatuz(Lista1);
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   New_Line(3);
   Put_Line("Sakatu return jarraitzeko");
   Skip_Line;
   New_Line(3);



   Lista1.zenbakiak(1) := 1; Lista1.zenbakiak(2) := 3; Lista1.zenbakiak(3) := 5;
   Lista1.zenbakiak(4) := 7; Lista1.zenbakiak(5) := 9; 
   Lista1.kopurua := 5;
   Put_line("proba4: lista  ordenatua: (1 3 5 7 9)");
    Put_line(" sarrerako lista: ");
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   put_line(" eta zure emaitza ");
   ordenatu_hautatuz(Lista1);
   Idatzi_Lista(Lista1);
   Put_line(" da ");

   New_Line(3);
   Put_Line("Sakatu return jarraitzeko");
   Skip_Line;
   New_Line(3);


   Lista1.kopurua := 0;
   Put_line("proba5: lista  hutsa: ()");
    Put_line(" sarrerako lista: ");
   Idatzi_Lista(Lista1);
   Put_line(" da ");
   put_line(" eta zure emaitza ");
   ordenatu_hautatuz(Lista1);
   Idatzi_Lista(Lista1);
   Put_line(" da ");

   New_Line(3);
   Put_Line("Sakatu return jarraitzeko");
   Skip_Line;
   New_Line(3);


end proba_ordenatu_hautatuz;

