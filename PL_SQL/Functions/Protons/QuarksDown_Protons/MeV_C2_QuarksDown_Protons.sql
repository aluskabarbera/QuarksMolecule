CREATE OR REPLACE FUNCTION MEV_C2_QUARKSDOWN_PROTONS(v_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_MEV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks down.

    v_QUARKDOWN_ID NUMBER := 4; -- Variable para declarar la identidad del quark down.
BEGIN
    -- Obtener la energia de los quarks down.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MEV_C2_QUARKSDOWN_PROTONS FROM SUBPARTICLES WHERE SUBPARTICLE_ID = v_QUARKDOWN_ID;    

    -- mev_c2_quarksdown_protons = quarksdown_protons * 4.7
    v_MEV_C2_QUARKSDOWN_PROTONS := v_QUARKSDOWN_PROTONS * v_MEV_C2_QUARKSDOWN_PROTONS;

    RETURN v_MEV_C2_QUARKSDOWN_PROTONS; 
END;
/
