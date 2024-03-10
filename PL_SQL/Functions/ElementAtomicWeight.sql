CREATE OR REPLACE FUNCTION ELEMENT_ATOMIC_WEIGHT(v_ELEMENTS_ARRAY IN VARCHAR2, v_SUBSCRIPTS_ARRAY IN NUMBER) RETURN NUMBER IS
    v_ELEMENT_ATOMIC_WEIGHT NUMBER := 0; -- Inicializar el peso atómico total.
    v_ELEMENT_ATOMIC_MASS NUMBER;
    v_ELEMENT_NAME VARCHAR2(255);
BEGIN
    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    -- Obtener el peso atómico del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_ATOMIC_MASS INTO v_ELEMENT_ATOMIC_MASS FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    -- Mostrar el peso atómico del elemento.
    DBMS_OUTPUT.PUT_LINE('Peso atómico del elemento ' || v_ELEMENT_NAME || ': ' || v_ELEMENT_ATOMIC_MASS);

    -- Calcular el peso atómico del elemento considerando su subíndice.
    v_ELEMENT_ATOMIC_WEIGHT := v_ELEMENT_ATOMIC_MASS * v_SUBSCRIPTS_ARRAY;

    -- Mostrar el peso atómico del elemento considerando su subíndice.
    DBMS_OUTPUT.PUT_LINE('Peso atómico del elemento ' || v_ELEMENT_NAME || ' multiplicado por su subíndice: ' || v_ELEMENT_ATOMIC_WEIGHT || CHR(10));

    -- Retornar el peso atómico del elemento considerando su subíndice.
    RETURN v_ELEMENT_ATOMIC_WEIGHT;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Lanzar una excepción con un mensaje personalizado: Avisar al usuario que el elemento no existe.
        RAISE_APPLICATION_ERROR(-20001, 'Error: El elemento ' || v_ELEMENTS_ARRAY || ' no existe.');
END;
/
