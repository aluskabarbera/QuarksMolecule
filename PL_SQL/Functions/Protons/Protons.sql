CREATE OR REPLACE FUNCTION PROTONS(v_ELEMENTS_ARRAY IN VARCHAR2, v_ATOMS IN NUMBER) RETURN NUMBER IS
    v_PROTONS NUMBER; -- Variable para almacenar el resultado final.
    v_ATOM NUMBER := 1; -- Variable para almacenar una unidad de átomo.

    v_ELEMENT_NAME VARCHAR2(255); -- Variable para almacenar el nombre del elemento de la tabla ELEMENTS.
    v_ELEMENT_PROTONS NUMBER; -- Variable para almacenar la cantidad de protones del elemento de la tabla ELEMENTS.
BEGIN
    -- Obtener la cantidad de protones del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_PROTONS INTO v_ELEMENT_PROTONS FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL = v_ELEMENTS_ARRAY;

    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_ELEMENT_PROTONS || ' PROTONES que posee por defecto un átomo de ' || v_ELEMENT_NAME || '.');
    
    -- Calculo de la cantidad de protones de cada elemento.
    v_PROTONS := v_ATOMS * v_ELEMENT_PROTONS / v_ATOM;

    RETURN v_PROTONS; 
END;
/
