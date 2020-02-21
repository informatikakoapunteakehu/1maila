with Tipoak;
use Tipoak;

with Ada.Text_Io;
use Ada.Text_Io;

with aulkiak_banatu, aulkiak_idatzi;

procedure aulkiak_kalkulatu (Lpv_Bizkaia, Lpv_Araba, Lpv_Gipuzkoa: in T_Lista_alderdien_botoak;
                            emaitza: out T_lista_aulkiak) is
   -- Aurre:  sarrerako 3 aldagaiek, probintzia bakoitzeko hauteskundeen emaitzak dituzte.
   -- Post: Emaitza, alderdi politiko bakoitzak lortu dituen aulki kopurua izango da. Probintzi bakoitzeko
   --        25 aulki esleituko dira, non 25 aulkiak alderdi politikoen artean banatuko diren.

    
    function dago (alderdiaren_izena: in T_izena;
            aulkiak: in T_lista_aulkiak) return Integer is
    -- Aurre:
    -- Post: emaitza 0 izango da baldin eta alderdia ez badago aulkiak zerrendan, bestela, zerrendan agertzen den posizioa itzuliko da.
    I: Integer;
    aurkitua: Boolean;
    begin
        I := 1;
        aurkitua := False;
        loop exit when I > aulkiak.Kop_alderdi or aurkitua = True;
            if alderdiaren_izena = aulkiak.taula_aulkiak(I).Izena then
                return I; 
                aurkitua := True;
                I := 0;
            end if;
            I := I + 1;
        end loop;
        return I;
            
    end dago; 


   procedure aulkiak_metatu (aulkiak_guztira : in out T_lista_aulkiak;
                               aulkiak: in     T_lista_aulkiak) is
      -- Aurre:
      -- Post: Aulkiak aldagaiko aulki kopurua, aulkiak_guztira aldagaiara gehitu dira
      Pos: Integer;
   begin
      for I in 1..aulkiak_guztira.Kop_alderdi loop
        Pos := dago(aulkiak.taula_aulkiak(I).izena, aulkiak_guztira);
        aulkiak_guztira.Taula_aulkiak(Pos).Aulki_kop := (aulkiak_guztira.Taula_aulkiak(Pos).Aulki_kop) + (aulkiak.Taula_aulkiak(Pos).Aulki_kop);
      end loop;
      --aulkiak_guztira.taula_aulkiak(Pos).aulki_kop := (aulkiak.Taula_aulkiak(Pos).aulki_kop);
      --aulkiak_guztira.Taula_aulkiak(Pos).Aulki_kop := (aulkiak_guztira.Taula_aulkiak(Pos).Aulki_kop) + (aulkiak.Taula_aulkiak(Pos).Aulki_kop);
   end aulkiak_metatu;
    
   aulkiak_Bizkaia, aulkiak_Araba, aulkiak_Gipuzkoa: T_lista_aulkiak;

begin
  emaitza.Kop_alderdi := 6;
  emaitza.taula_aulkiak(1) := ("         PNV/EA", 0);
  emaitza.taula_aulkiak(2) := ("             PP", 0);
  emaitza.taula_aulkiak(3) := ("       PSE-PSOE", 0);
  emaitza.taula_aulkiak(4) := ("           EHAK", 0);
  emaitza.taula_aulkiak(5) := ("          EB-IU", 0);
  emaitza.taula_aulkiak(6) := ("         ARALAR", 0);
  aulkiak_banatu(Lpv_Bizkaia, aulkiak_Bizkaia);
  aulkiak_banatu(Lpv_Araba, aulkiak_Araba);
  aulkiak_banatu(Lpv_Gipuzkoa, aulkiak_Gipuzkoa);
   
  aulkiak_metatu(emaitza, aulkiak_Bizkaia);
  aulkiak_metatu(emaitza, aulkiak_Bizkaia);
  aulkiak_metatu(emaitza, aulkiak_Gipuzkoa);
end aulkiak_kalkulatu;

