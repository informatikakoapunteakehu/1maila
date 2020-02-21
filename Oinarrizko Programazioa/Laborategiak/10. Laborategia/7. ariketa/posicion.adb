with Datos;
use Datos;

function Posicion (L: Lista; Num : Integer ) return Natural is 
   -- pre: 
   -- post: el resultado es la posicion de la primera aparicion de Num, 
   --       caso de que Num pertenezca a L, y cero en otro caso

Lista_posicion: Lista;
kont: Integer;
aurkitua: boolean;
begin
    aurkitua := false;
    kont := 0;
    Lista_posicion := L;
    loop exit when (Lista_posicion = null) or aurkitua = true;
        if (Lista_posicion.Info = num) then
            aurkitua := true;            
        end if;
        Lista_posicion := Lista_posicion.sig;
        kont := kont + 1;   
    end loop;
    if aurkitua /= false then
        return kont;
    else
        return 0;
    end if;
end Posicion;


