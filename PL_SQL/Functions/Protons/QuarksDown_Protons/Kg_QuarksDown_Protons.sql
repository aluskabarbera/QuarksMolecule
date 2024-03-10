CREATE OR REPLACE FUNCTION Kg_QUARKSDOWN_PROTONS(v_Kg_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSDOWN_PROTONS := v_Kg_C2_QUARKSDOWN_PROTONS / v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSDOWN_PROTONS; 
END;
/
