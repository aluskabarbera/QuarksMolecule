CREATE OR REPLACE FUNCTION ATOMS(v_MOLECULES IN NUMBER, v_SUBSCRIPTS_ARRAY IN NUMBER) RETURN NUMBER IS
    v_ATOMS NUMBER; -- Variable para almacenar el resultado final.
    v_MOLECULE NUMBER := 1; -- Variable para almacenar una unidad de molecula.
BEGIN
    -- Calculo de la cantidad de atomos de cada elemento.
    v_ATOMS := v_MOLECULES * v_SUBSCRIPTS_ARRAY / v_MOLECULE;

    RETURN v_ATOMS; 
END;
/
