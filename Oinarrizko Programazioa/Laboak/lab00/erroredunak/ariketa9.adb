with Irakurri_Erreala;
with Idatzi_Katea, Idatzi_Erreala;

procedure Ariketa9 is

   -- Aurrebaldintza:
   --   F = <R> (zenb. erreal), non:
   --     R zirkuluaren erradioa den, R > 0.0
   -- Postbaldintza:
   --   G = <D> (zenb. erreal), non:
   --     D, R erradioa duen zirkuluaren zirkunferentzia den

   -- Pi konstantea erazagutu
   Pi : constant Float := 3.1415;
   R,D : Float;
begin
   -- irakurri erradioa
   Idatzi_Katea ("Idatzi zirkuluaren erradioa eta sakatu <RETURN>:");
   Irakurri_Erreala(R);
   -- Kalkulatu zirkunferentzia
   D := 2*Pi*R;
   -- Idatzi emaitza
   Idatzi_Katea ("Zirkuluaren zirkunferentzia hau da:");
   Idatzi_Erreala(D);

end Ariketa9;
