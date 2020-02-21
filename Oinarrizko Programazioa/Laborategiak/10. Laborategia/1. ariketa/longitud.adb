with Datos;
use Datos;

function Longitud (L : Lista ) return Natural is 
  -- pre: ??? Escribe la precondicion!!!
  -- post: ??? Escribe la postcondicion!!!
  
    L_kop: Natural;
    egungoaren_apuntadorea: Lista;
begin
    L_kop := 0;
    egungoaren_apuntadorea := L;
    loop exit when egungoaren_apuntadorea = null;
            egungoaren_apuntadorea := egungoaren_apuntadorea.sig;
            L_kop := L_kop + 1;
    end loop;
    return L_kop;
end Longitud;
