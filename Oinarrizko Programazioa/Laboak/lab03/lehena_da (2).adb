function Lehena_Da (X : in Positive) return Boolean is

   --Aurrebaldintza: X, aztertu beharreko zenbakia
   --Postbaldintza: emaitza = True, X zenbaki lehena bada;
   --               emaitza = False, bestela.

   I      : Integer := 2;
   Lehena : Boolean := True;

begin
   while I * I <= X and Lehena loop
      if X mod I = 0 then
         Lehena := False;
      end if;
      I := I + 1;
   end loop;
   return Lehena;
end Lehena_Da;
