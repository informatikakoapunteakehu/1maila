with Ada.Integer_Text_IO,Ada.Text_IO;---use a�ade junto con 
---las librer�as de entrada y salida el subprograma misma_cantidad_de_0s_y_1s
use Ada.Integer_Text_IO,Ada.Text_IO;
with misma_cantidad_de_0s_y_1s;

procedure prueba_misma_cantidad_de_0s_y_1s is

numBin:integer;


begin
    put_line("Primera prueba: 1");
    put("Tu programa deber�a devolver false indicando que el n�mero no contiene la misma cantidad de 0s y 1s");
    new_line;
    numBin:=1;
    if misma_cantidad_de_0s_y_1s(numBin)/=true then
         put("Y devuelve true. Tu programa funciona correctamente");
         new_line;
    else
        put("Revisa tu programa, este no funciona correctamente");
         new_line;
    end if;
    put("Pulsa intro para continuar");
    Skip_Line;
    put_line("Segunda prueba: 10");
    put("Tu programa deber�a devolver true indicando que el n�mero contiene la misma cantidad de 0s y 1s");
    new_line;
    numBin:=10;
    if misma_cantidad_de_0s_y_1s(numBin)=true then
         put("Y devuelve true. Tu programa funciona correctamente");
         new_line;
    else
        put("Revisa tu programa, este no funciona correctamente");
         new_line;
    end if;
    put("Pulsa intro para continuar");
    Skip_Line;
    put_line("Tercera prueba: 101010");
    put("Tu programa deber�a devolver true indicando que el n�mero contiene la misma cantidad de 0s y 1s");
    new_line;
    numBin:=101010;
    if misma_cantidad_de_0s_y_1s(numBin)=true then
         put("Y devuelve true. Tu programa funciona correctamente");
         new_line;
    else
        put("Revisa tu programa, este no funciona correctamente");
         new_line;
    end if;
    put("Pulsa intro para continuar");
    Skip_Line;
    put_line("Cuarta prueba: 101110");
    put("Tu programa deber�a devolver false indicando que el n�mero no contiene la misma cantidad de 0s y 1s");
    new_line;
    numBin:=101110;
    if misma_cantidad_de_0s_y_1s(numBin)/=true then
         put("Y devuelve false. Tu programa funciona correctamente");
         new_line;
    else
        put("Revisa tu programa, este no funciona correctamente");
         new_line;
    end if;
    put("Pulsa intro para continuar");
    Skip_Line;


end prueba_misma_cantidad_de_0s_y_1s;
