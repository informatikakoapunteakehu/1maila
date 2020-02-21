function es_bisiesto (N: in integer) return boolean is

   --- Entrada: 1 numero
   --- pre: 1<= anno:valor1 <=2020
   --- post: el resultado es true si el anno es bisiesto | 
   --- bisiesto (((divisible entre 4)y(no divisible entre 100))o (divisible entre 400))

   result_bisies: boolean:=false;

begin

    if( ( (N rem 4 = 0) and not( N rem 10 = 0) ) or (N rem 400 = 0) ) then
        result_bisies:= True;        
    end if;
        
    return(result_bisies);
end es_bisiesto;