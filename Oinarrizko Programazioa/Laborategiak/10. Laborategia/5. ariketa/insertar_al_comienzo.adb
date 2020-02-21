with Datos;
use Datos;

procedure Insertar_Al_Comienzo (L: in out Lista; Num : in Integer ) is 
   -- pre:
   -- post: se ha insertado el nuevo valor al comienzo de L
   
   Nuevo : Lista;  
begin
    Nuevo := new Nodo;
    Nuevo.info := num;
    Nuevo.sig := L;
    L := Nuevo;
end Insertar_Al_Comienzo;

