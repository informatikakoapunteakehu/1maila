with Datos;
use Datos;

procedure Calcular_Maximo_Y_Posicion (L: in Lista;  Max, Pos_Max : out Integer ) is 
   -- pre: 
   -- post: Max contendra el mayor valor de L y Pos_max su posicion
   --       Si L es vacia entonces Pos_Max vale cero

    Actual: Lista;
    kont: Integer;
    
begin
    
    Actual := L;
    Pos_Max := 0;
    Max := 0;
    kont := 0;
    
    loop exit when(Actual = null);
        
        kont := kont + 1;
        
        if (Actual.Info > Max) then
            Max := Actual.Info;
            Pos_Max := kont;
        end if;
        
        Actual := Actual.Sig;
        
    end loop;


end Calcular_Maximo_Y_Posicion;
