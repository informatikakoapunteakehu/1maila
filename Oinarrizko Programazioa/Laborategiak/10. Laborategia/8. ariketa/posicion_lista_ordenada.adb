with Datos;
use Datos;

procedure Posicion_Lista_Ordenada (
      L    :        Lista;   
      Num  :        Integer; 
      Esta :    out Boolean; 
      Pos  :    out Natural  ) is 
   -- pre: L esta ordenada, con sus valores de menor a mayor
   -- post: Esta valdra true si Num pertenece a L y false si no
   --       Pos es la posicion de la primera aparicion de Num, 
   --       en caso de que Num pertenezca a L, y si no
   --       devolverá la posición en que debería colocarse

    Actual: Lista;
    kont : Integer;
 
begin
 
    Actual := L;
    Esta := False;
    Pos := 1;
    kont := 0;
    
    loop exit when( (Actual = null) or else (Actual.Info > num) or else (Esta = True) );
        
        kont := kont + 1;
        
        if (Actual.Info = num) then
            Esta := True;
        else
            Pos := kont + 1;
        end if;
        
        Actual := Actual.Sig;
        
    end loop;
    

end Posicion_Lista_Ordenada;
