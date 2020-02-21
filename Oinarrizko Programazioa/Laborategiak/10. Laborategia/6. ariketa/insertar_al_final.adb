with Datos, azkena;
use Datos;

procedure Insertar_Al_Final (L: in out Lista; Num : in Integer ) is 
   -- pre:
   -- post: se ha insertado el nuevo valor al final de L

    aurreko: Lista;
    berria: Lista;
    
begin

    berria := new Nodo;
    berria.Info := Num;
    aurreko := azkena(L);
    
    if aurreko = null then
        L:= berria;
    else
        aurreko.Sig := berria;
    end if;
    

end Insertar_Al_Final;
