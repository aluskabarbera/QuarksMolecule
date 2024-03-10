CREATE OR REPLACE FUNCTION NEUTRONS(v_ELEMENTS_ARRAY IN VARCHAR2, v_ATOMS IN NUMBER) RETURN NUMBER IS
    v_NEUTRONS NUMBER; -- Variable para almacenar el resultado final.
    v_ATOM NUMBER := 1; -- Variable para almacenar una unidad de átomo.

    v_ELEMENT_NAME VARCHAR2(255); -- Variable para almacenar el nombre del elemento de la tabla ELEMENTS.
    v_ELEMENT_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de protones del elemento de la tabla ELEMENTS.
BEGIN
    -- Obtener la cantidad de neutrones del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NEUTRONS INTO v_ELEMENT_NEUTRONS FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_ELEMENT_NEUTRONS || ' NEUTRONES que posee por defecto un átomo de ' || v_ELEMENT_NAME || '.');

    -- Calculo de la cantidad de neutrones de cada elemento.
    v_NEUTRONS := v_ATOMS * v_ELEMENT_NEUTRONS / v_ATOM;

    RETURN v_NEUTRONS; 
END;
/
