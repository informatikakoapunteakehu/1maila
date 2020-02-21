function misma_cantidad_de_0s_y_1s (n: in integer) return boolean is
    
    --- Entrada: 1 numero
    --- pre: el numero estara formado unicamente por 0s y 1s y comenzará con 1
    --- Salida: 1 booleano
    --- post: el resultado es true si el número de entrada contiene el mismo número de 1s que de 0s
    
    cont0s,cont1s: integer;
    emaitza: boolean;
    naux:integer;
    
    begin
        cont0s:=0;
        cont1s:=0;
        naux:=n;
        loop exit when naux=0;
            if naux rem 10 =0 then
                cont0s:=cont0s+1;
            else
                cont1s:=cont1s+1;
            end if;
            naux:=naux/10;
    
        end loop;
    
    if cont0s=cont1s then
        emaitza:=true;
    else
        emaitza:=false;
    end if;
        
        return emaitza;
    
    
        
    end misma_cantidad_de_0s_y_1s;
    