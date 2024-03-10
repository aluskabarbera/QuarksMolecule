CREATE OR REPLACE FUNCTION MeV_C2_QUARKSUP_NEUTRONS(v_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks up.

    v_QUARKUP_ID NUMBER := 1; -- Variable para declarar la identidad del quark up.
BEGIN
    -- Obtener la energia de los quarks up.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSUP_NEUTRONS FROM SUBPARTICLES WHERE SUBPARTICLE_ID = v_QUARKUP_ID;
    
    -- MeV_C2_QUARKSUP_NEUTRONS = quarksup_neutrons * 2.2
    v_MeV_C2_QUARKSUP_NEUTRONS := v_QUARKSUP_NEUTRONS * v_MeV_C2_QUARKSUP_NEUTRONS;

    RETURN v_MeV_C2_QUARKSUP_NEUTRONS; 
END;
/
