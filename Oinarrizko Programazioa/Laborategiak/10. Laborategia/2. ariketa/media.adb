with Datos;
use Datos;

function Media (L : Lista ) return Float is 
   -- pre: ??? Escribe la precondicion!!!
   -- post: ??? Escribe la postcondicion!!!
akum: Float := 0.0;
kont: Integer:= 0;
media_lista: Lista;
begin
    media_lista := L;
    loop exit when media_lista = null;
        akum := akum + float(media_lista.Info);
        media_lista := media_lista.sig;
        kont := kont + 1;
    end loop;
    if kont /= 0 then
        akum := akum / float(kont); 
    end if;
    return akum;
end Media; 
