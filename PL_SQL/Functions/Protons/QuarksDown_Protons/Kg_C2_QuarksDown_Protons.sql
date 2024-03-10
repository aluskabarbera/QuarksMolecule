CREATE OR REPLACE FUNCTION Kg_C2_QUARKSDOWN_PROTONS(v_J_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN
    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg / c^2 / 1 J
    v_Kg_C2_QUARKSDOWN_PROTONS := v_J_C2_QUARKSDOWN_PROTONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSDOWN_PROTONS; 
END;
/
