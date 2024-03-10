CREATE OR REPLACE FUNCTION J_C2_QUARKSUP_PROTONS(v_eV_C2_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J / c^2 / 1 eV
    v_J_C2_QUARKSUP_PROTONS := v_eV_C2_QUARKSUP_PROTONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSUP_PROTONS; 
END;
/
