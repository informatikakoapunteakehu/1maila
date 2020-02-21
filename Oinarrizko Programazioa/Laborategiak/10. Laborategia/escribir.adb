with Ada.Text_IO, Ada.Integer_Text_IO, Datos;
use Datos;

procedure Escribir (
      L : in     Lista ) is 
      -- pre: 
      -- post: 

   Actual : Lista;  

begin
   Ada.Text_Io.New_Line;
   Ada.Text_Io.New_Line;
   Ada.Text_Io.Put("el contenido de la lista es: ");
   Ada.Text_Io.New_Line;
   Ada.Text_Io.Put("       <");
   Ada.Text_Io.New_Line;

    Actual:= L;
    while Actual /= null loop -- Igual: loop exit when Actual=null
        Ada.Integer_Text_Io.Put(Actual.Info);
        Ada.Text_Io.New_Line;
        Actual:= Actual.Sig;
    end loop;

   Ada.Text_Io.Put("        >");
   Ada.Text_Io.New_Line;
end Escribir;

