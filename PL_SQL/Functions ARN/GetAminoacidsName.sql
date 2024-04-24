CREATE OR REPLACE FUNCTION GET_AMINOACID_NAME(v_CODON VARCHAR2) RETURN VARCHAR2 IS
    v_A_NAME VARCHAR2(255); -- Declara una variable para almacenar el nombre del aminoacido
BEGIN
    SELECT AMINOACID_NAME INTO v_A_NAME -- Realiza una consulta para obtener el nombre del aminoacido
    FROM AMINOACIDS
    WHERE CODON = v_CODON; -- Filtra la consulta por el símbolo del aminoacido proporcionado

    RETURN v_A_NAME; -- Devuelve el nombre del aminoacido obtenido

END GET_AMINOACID_NAME;
/
