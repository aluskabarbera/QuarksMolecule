CREATE OR REPLACE FUNCTION MOLS(v_WEIGHT IN NUMBER, v_ELEMENT_ATOMIC_WEIGHT IN NUMBER) RETURN NUMBER IS
    v_MOLS NUMBER; -- Variable para almacenar el resultado final.
    v_MOL NUMBER := 1; -- Variable para almacenar una unidad de mol.
BEGIN
    
    -- Calculo de la cantidad de moles.
    v_MOLS := v_WEIGHT * v_MOL / v_ELEMENT_ATOMIC_WEIGHT;

    RETURN v_MOLS; 
END;
/
