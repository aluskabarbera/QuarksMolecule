CREATE OR REPLACE FUNCTION MeV_C2_QUARKSDOWN_PROTONS(v_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks down.

    v_QUARKDOWN_ID VARCHAR2(255) := 'Down'; -- Variable para declarar la identidad del quark down.
BEGIN
    -- Obtener la energia de los quarks down.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSDOWN_PROTONS FROM SUBPARTICLES WHERE SUBPARTICLE_NAME_ID = v_QUARKDOWN_ID;    

    -- mev_c2_quarksdown_protons = quarksdown_protons * 4.7
    v_MeV_C2_QUARKSDOWN_PROTONS := v_QUARKSDOWN_PROTONS * v_MeV_C2_QUARKSDOWN_PROTONS;

    RETURN v_MeV_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION eV_C2_QUARKSDOWN_PROTONS(v_MeV_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV/c^2 / 1 MeV
    v_eV_C2_QUARKSDOWN_PROTONS := v_MeV_C2_QUARKSDOWN_PROTONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION J_C2_QUARKSDOWN_PROTONS(v_eV_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J/c^2 / 1 eV
    v_J_C2_QUARKSDOWN_PROTONS := v_eV_C2_QUARKSDOWN_PROTONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_C2_QUARKSDOWN_PROTONS(v_J_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN
    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg/c^2 / 1 J
    v_Kg_C2_QUARKSDOWN_PROTONS := v_J_C2_QUARKSDOWN_PROTONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_QUARKSDOWN_PROTONS(v_Kg_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSDOWN_PROTONS := v_Kg_C2_QUARKSDOWN_PROTONS / v_SPEED_OF_LIGHT_IN_A_VACUUM * v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSDOWN_PROTONS; 
END;
/
