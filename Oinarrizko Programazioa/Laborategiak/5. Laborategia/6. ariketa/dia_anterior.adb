with ADA.Text_IO,ADA.Integer_Text_IO,ultimo_dia;
use ADA.Text_IO,ADA.Integer_Text_IO;

procedure dia_anterior (N1, N2, N3: in out integer) is

   --- N1 = Eguna | N2 = Hilabetea | N3 = Urtea
   --- Entrada: 3 numeros
   --- pre:  1<= dia:valor1 <=30 |mes:valor2 {04,06,09,11}
   ---  1<= dia:valor1 <=31 |mes:valor2 {01,03,05,07,08,10,12}
   ---  1<= dia:valor1 <=29 |mes:valor2=01 ^ año bisiesto
   ---  1<= dia:valor1 <=28 |mes:valor2=01 ^ año no bisiesto
   ---  <=1 mes:valor2 <=12
   ---  1<= anno:valor3 <=2020
   --- Salida: 3 numeros
   --- post: dia será el dia anterior
   ---  1<= dia:valor1 <=30 |mes:valor2 {04,06,09,11}
   ---  1<= dia:valor1 <=31 |mes:valor2 {01,03,05,07,08,10,12}
   ---  1<= dia:valor1 <=29 |mes:valor2=01 ^ año bisiesto
   ---  1<= dia:valor1 <=28 |mes:valor2=01 ^ año no bisiesto
   ---  <=1 mes:valor2 <=12
   ---  1<= anno:valor3 <=2020
    
    azken_eguna:integer;    


begin
    
    N1:=N1 - 1;
    
    if(N1 < 1) then
        N2:=N2 - 1;
        azken_eguna:=ultimo_dia(N2, N3);
        N1:=azken_eguna;
    end if; 
    if(N2 < 1) then
        N3:= N3 - 1;
        azken_eguna:=ultimo_dia(N2, N3);
        N2:=12;
    end if; 

end dia_anterior;
