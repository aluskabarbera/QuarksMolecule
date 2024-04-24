CREATE OR REPLACE FUNCTION GET_NITROGENOUS_CHEMICALFORMULA(v_NB_SYMBOL VARCHAR2) RETURN VARCHAR2 IS
    v_NB_CHEMICALFORMULA VARCHAR2(255); -- Declara una variable para almacenar el nombre de la base nitrogenada
BEGIN
    SELECT CHEMICAL_FORMULA_ID INTO v_NB_CHEMICALFORMULA -- Realiza una consulta para obtener el nombre de la base nitrogenada
    FROM NITROGENOUS_BASES
    WHERE NITROGENOUS_SYMBOL = v_NB_SYMBOL; -- Filtra la consulta por el símbolo de la base nitrogenada proporcionado

    RETURN v_NB_CHEMICALFORMULA; -- Devuelve el nombre de la base nitrogenada obtenido

END GET_NITROGENOUS_CHEMICALFORMULA;
/
