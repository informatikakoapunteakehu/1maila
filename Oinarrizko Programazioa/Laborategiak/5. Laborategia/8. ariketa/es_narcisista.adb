-- Author: Aitziber
with ADA.Text_IO, ADA.Integer_Text_IO;
use ADA.Text_IO, ADA.Integer_Text_IO;

with ciras_elevadas;

function es_narcisista(n: in integer) return boolean is
--pre: el numero consta de 3 cifras
--post: devolvera true si el numero es narcisista, es decir, si la suma
    ---de sus cifras elevadas a un numero 0< n <10 es igual al valor de entrada. Por ejemplo el 153 =(1**3)+(5**3)+(3**3)
    n_sum:integer;
    result:boolean:=FALSE;
begin
    n_sum:=0;
    ciras_elevadas(n,n_sum);
    if n = n_sum then
        result:=TRUE;
    else
        result:=FALSE;
    end if;
    return result;
end es_narcisista;
