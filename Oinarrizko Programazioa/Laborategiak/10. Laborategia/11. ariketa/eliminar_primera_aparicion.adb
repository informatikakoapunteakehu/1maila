with Datos, Ada.Text_Io;
use Datos, Ada.Text_Io;

procedure Eliminar_Primera_Aparicion (
      L   : in out Lista;  
      Num : in     Integer ) is 
   -- Pre: 
   -- Post: se ha eliminado de L la primera aparicion de Num
   --       en caso de que no aparezca se escribira un mensaje

	Aux: Lista;
	Aux1: Lista;
	agertua: boolean;
begin
	
	agertua := False;
	
    Berria := L;
	
	loop exit when ((agertua = True) or (Aux = null));
	
            if (Num = Aux.Info) then
			
                if (Aux1 /= null) then
				
                    Aux1.sig := Aux.sig;
                    agertua := True;
					
                else
				
					agertua := True;
                    L := L.sig;
					
                end if;      
				
            else
			
                Aux1 := Aux;
                Aux := Aux.sig;    
				
            end if;
			
        end loop;

end Eliminar_Primera_Aparicion;

