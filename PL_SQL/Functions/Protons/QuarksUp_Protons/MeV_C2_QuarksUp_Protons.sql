CREATE OR REPLACE FUNCTION MEV_C2_QUARKSUP_PROTONS(v_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_MEV_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks up.

    v_QUARKUP_ID NUMBER := 1; -- Variable para declarar la identidad del quark up.
BEGIN
    -- Obtener la energia de los quarks up.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MEV_C2_QUARKSUP_PROTONS FROM SUBPARTICLES WHERE SUBPARTICLE_ID = v_QUARKUP_ID;

    -- mev_c2_quarksup_protons = quarksup_protons * 2.2
    v_MEV_C2_QUARKSUP_PROTONS := v_QUARKSUP_PROTONS * v_MEV_C2_QUARKSUP_PROTONS;

    RETURN v_MEV_C2_QUARKSUP_PROTONS; 
END;
/
