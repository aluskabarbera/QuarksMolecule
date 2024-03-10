CREATE OR REPLACE FUNCTION eV_C2_QUARKSDOWN_PROTONS(v_MeV_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV / c^2 / 1 MeV
    v_eV_C2_QUARKSDOWN_PROTONS := v_MeV_C2_QUARKSDOWN_PROTONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSDOWN_PROTONS; 
END;
/
