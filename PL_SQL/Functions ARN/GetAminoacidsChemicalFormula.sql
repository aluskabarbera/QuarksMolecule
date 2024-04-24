CREATE OR REPLACE FUNCTION GET_AMINOACID_CHEMICALFORMULA(v_CODON VARCHAR2) RETURN VARCHAR2 IS
    v_A_CHEMICALFORMULA VARCHAR2(255); -- Declara una variable para almacenar el nombre de la base nitrogenada
BEGIN
    SELECT CHEMICAL_FORMULA_ID INTO v_A_CHEMICALFORMULA -- Realiza una consulta para obtener el nombre de la base nitrogenada
    FROM AMINOACIDS
    WHERE CODON = v_CODON;
    
    IF (v_CODON = 'UAA') OR (v_CODON = 'UAG') OR (v_CODON = 'UGA') THEN
        v_A_CHEMICALFORMULA := 'Stop CODON';
    END IF;

    RETURN v_A_CHEMICALFORMULA; -- Devuelve la formula química del codon obtenido

END GET_AMINOACID_CHEMICALFORMULA;
/
