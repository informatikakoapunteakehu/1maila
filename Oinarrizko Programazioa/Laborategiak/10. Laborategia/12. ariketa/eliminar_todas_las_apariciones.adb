with Datos;
use Datos;

with Ada.Text_Io; use Ada.Text_Io;

with posicion;

procedure Eliminar_Todas_Las_Apariciones (L: in out Lista; Num: in Integer ) is 
   -- Pre: 
   -- Post: se han eliminado de L todas las apariciones de Num

    Pos : Natural;
    
    Aux: Lista;
    Aux1: Lista;
   
    -- 234
    -- 3
    -- 24
    
    
begin

    Pos := Posicion(L, Num);
    
    Aux := L;
    
    if ( (L /= null) and (Pos /= 0) ) then
        
        loop exit when(Aux = null);
                 
            if (Aux.Info = Num) then
                
                if (Aux1 /= null) then
                    Aux1.Sig := Aux.Sig;
                    Aux := Aux.Sig;
                else
                    L := L.Sig;
                    Aux := L;
                    
                end if;    
       
            else
                
                Aux1 := Aux;
                Aux := Aux.Sig;
    
            end if;
            
        end loop;    
        
    end if;    
    

end Eliminar_Todas_Las_Apariciones;

