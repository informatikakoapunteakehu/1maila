with ADA.Text_IO,ADA.Integer_Text_IO,es_bisiesto;
use ADA.Text_IO,ADA.Integer_Text_IO;

function ultimo_dia (N1, N2: in integer) return integer is

   --- Entrada: 2 numeros   N1= hilabetea / N2= urtea
   --- pre:1 mes:valor1 <=12
   ---     1<= anno:valor2 <=2020
   --- Salida: 1 numero
   --- post: dia:valor3
   ---  1<= ult_dia:valor1 <=30 |mes:valor2 {04,06,09,11}
   ---  1<= ult_dia:valor1 <=31 |mes:valor2 {01,03,05,07,08,10,12}
   ---  1<= ult_dia:valor1 <=29 |mes:valor2=01 ^ año bisiesto
   ---  1<= ult_dia:valor1 <=28 |mes:valor2=01 ^ año no bisiesto
  
   ult_dia:integer;

begin 
    if(es_bisiesto(N2) = true) then
        if(N1 = 2) then
            ult_dia:=29;
        end if;
    else
        ult_dia:=28;
    end if;
    
    if((N1 = 1) or (N1 = 3) or (N1 = 5) or (N1 = 7) or (N1 = 8) or (N1 = 10) or (N1 = 12)) then
        ult_dia:=31;
    end if;
    if((N1 = 4) or (N1 = 6) or (N1 = 9) or (N1 = 11)) then
        ult_dia:=30;
    end if;

    return(ult_dia);

end ultimo_dia;
