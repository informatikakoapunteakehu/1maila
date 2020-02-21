with Datos;
use Datos;

with longitud; 

procedure Insertar_En_Lista_Ordenada (L: in out Lista; Num: in Integer ) is 
   -- pre: L esta ordenada de menor a mayor
   -- post: se ha insertado el nuevo valor en L de manera ordenada
    
    aurrekoa: Lista; 
    egungoa: Lista;
    
    atera: Boolean;
    
begin
    
    atera := False;
    
    -- L zerrendan elementurik ez badago
    if (L = null) then
        
        L:= new Nodo;
        L.info := Num;
        
    -- Hasieran txertatu
    elsif (L.Info > Num) then
        egungoa := new Nodo;
        egungoa.Info := Num;
        egungoa.sig := L; 
        L := egungoa;
            
    else
        egungoa := L;
        
        loop exit when( (atera = True) or (egungoa = null) );            
            
            if (egungoa.Info > Num) then
                
                egungoa := New Nodo;
                egungoa.Info := Num;
                egungoa.Sig := aurrekoa.Sig; 
                aurrekoa.Sig := egungoa;
                atera := True;
                
            else
                
                aurrekoa := egungoa;
                egungoa := egungoa.Sig;
                
            end if;
            
        end loop;
        
        if (atera = False) then
            egungoa := new Nodo;
            egungoa.Info := Num; 
            aurrekoa.Sig := egungoa;
        end if;
    end if;
     
end Insertar_En_Lista_Ordenada;
