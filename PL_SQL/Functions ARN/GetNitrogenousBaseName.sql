CREATE OR REPLACE FUNCTION GET_NITROGENOUS_NAME(v_NB_SYMBOL VARCHAR2) RETURN VARCHAR2 IS
    v_NB_NAME VARCHAR2(255); -- Declara una variable para almacenar el nombre de la base nitrogenada
BEGIN
    SELECT NITROGENOUS_NAME INTO v_NB_NAME -- Realiza una consulta para obtener el nombre de la base nitrogenada
    FROM NITROGENOUS_BASES
    WHERE NITROGENOUS_SYMBOL = v_NB_SYMBOL; -- Filtra la consulta por el símbolo de la base nitrogenada proporcionado

    RETURN v_NB_NAME; -- Devuelve el nombre de la base nitrogenada obtenido

END GET_NITROGENOUS_NAME;
/
