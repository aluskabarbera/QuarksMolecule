CREATE OR REPLACE FUNCTION MOLECULES(v_MOLS IN NUMBER) RETURN NUMBER IS
    v_MOL NUMBER := 1; -- Variable para almacenar una unidad de mol.
    v_AVOGADRO NUMBER := 6.02214076e23; -- Constante de Avogrado.
    v_MOLECULES NUMBER; -- Variable para almacenar el resultado final
BEGIN
    -- Calculo de la cantidad de moles.
    -- Multiplica el número de moléculas (v_MOLS) por la constante de Avogadro y luego divide por el número de moles (v_MOL).
    v_MOLECULES := v_MOLS * v_AVOGADRO / v_MOL;

    -- Devuelve el número de moles.
    RETURN v_MOLECULES; 
END;
/
