CREATE OR REPLACE FUNCTION MeV_C2_QUARKSDOWN_NEUTRONS(v_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks down.

    v_QUARKDOWN_ID NUMBER := 4; -- Variable para declarar la identidad del quark down.
BEGIN
    -- Obtener la energia de los quarks down.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSDOWN_NEUTRONS FROM SUBPARTICLES WHERE SUBPARTICLE_ID = v_QUARKDOWN_ID;

    -- MeV_C2_quarksDown_NEUTRONS = quarksDown_neutrons * 4.7
    v_MeV_C2_QUARKSDOWN_NEUTRONS := v_QUARKSDOWN_NEUTRONS * v_MeV_C2_QUARKSDOWN_NEUTRONS;

    RETURN v_MeV_C2_QUARKSDOWN_NEUTRONS; 
END;
/
