PROCEDURE Igarren_Digitua_Ordeztu (Zbkia : IN OUT Positive; I : IN Positive; Bal : IN Natural) IS

-- Aurrebaldintza: Zbkia telefono-zenbakia da
   -- I da ordeztu nahi den digituaren posizioa (1 <= I <= 9)
   -- Bal da digitu berria (0 <= Bal <= 9)
-- Postbaldintza: Zbkia-aren I. digitua (eskuinetik kontatuta) Bal da;
   -- Zbkia-ren beste digitu guztiak ez dira aldatu.

   WITH Irakurri_Osoa, Idatzi_Osoa, Idatzi_Katea;
   with igarren_digitua1;

   Zbkia: Integer:= Num;
   I: Integer:= Pos;
   Bal: Integer := Ordez;

BEGIN
   zenbI:= igarren_digitua1(num,pos);
