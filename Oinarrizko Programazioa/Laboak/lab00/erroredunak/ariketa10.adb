with Irakurri_Erreala;
with Idatzi_Katea, Idatzi_Erreala;

procedure Ariketa10 is

   -- Aurrebaldintza:
   --   F = <R> (zenb. erreal), non:
   --     R zirkuluaren erradioa den
   -- Postbaldintza:
   --   G = <D> (zenb. erreal), non:
   --     D, R erradioa duen zirkuluaren zirkunferentzia den

   -- Pi konstantea erazagutu
   Pi : constant Float := 3.1415;
   R, D : Float;

begin
   -- irakurri erradioa
   Idatzi_Katea ("Idatzi zirkuluaren erradioa eta sakatu <RETURN>:");
   Irakurri_Erreala(R);
   -- Kalkulatu zirkunferentzia
   D := 2.0*Pi*R;
   -- Idatzi emaitza
   Idatzi_Katea; -- Mezua adibidez: "Zirkuluaren zirkunferentzia hau da:"
   Idatzi_Erreala(D);
end Ariketa10;
