with ADA.Text_IO,ADA.Integer_Text_IO,dia_anterior;
use ADA.Text_IO,ADA.Integer_Text_IO;

procedure prueba_dia_anterior is


dia,mes,anno:integer;

begin

    put("Primer caso de prueba: 1 1 2010");
    new_line;
    put("el resultado deberia ser 31 12 2009");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=1;
    mes:=1;
    anno:=2010;
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;
    
    put("Segundo caso de prueba: 1 4 2010");
    new_line;
    put("el resultado deberia ser 31 3 2010");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=1;
    mes:=4;
    anno:=2010;    
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;
    
    put("Tercer caso de prueba: 1 10 2010");
    new_line;
    put("el resultado deberia ser 30 9 2010");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=1;
    mes:=10;
    anno:=2010;
    
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;
    
    put("Cuarto caso de prueba: 1 3 2010");
    new_line;
    put("el resultado deberia ser 28 2 2010");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=1;
    mes:=3;
    anno:=2010;
    
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;
    
    put("Quinto caso de prueba: 1 3 2004");
    new_line;
    put("el resultado deberia ser 29 2 2004");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=1;
    mes:=3;
    anno:=2004;
    
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;
    
    put("Sexto caso de prueba: 3 1 2010");
    new_line;
    put("el resultado deberia ser 2 1 2010");
    new_line;
    put("y según tu programa el resultado es:");
    new_line;
    dia:=3;
    mes:=1;
    anno:=2010;
    
    ---inicializaciones de dia mes y anno con el caso de prueba
    ---llamada a tu subprograma
    dia_anterior(dia, mes, anno);
    put(dia,width=>3);
    put(mes,width=>3);
    put(anno,width=>5);
    new_line;
    new_line;

end prueba_dia_anterior;
