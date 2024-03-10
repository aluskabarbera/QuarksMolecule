CREATE OR REPLACE FUNCTION MOLECULE_ATOMIC_WEIGHT(v_MOLECULE IN VARCHAR2) RETURN NUMBER IS
    -- Definición de un tipo de array de cadenas de caracteres.
    TYPE STRING_ARRAY_TYPE IS VARRAY(100) OF VARCHAR2(30);
    -- Definición de un tipo de array de números.
    TYPE NUMBER_ARRAY_TYPE IS VARRAY(100) OF NUMBER(30);

    -- Declaración de dos arrays, uno para almacenar elementos de la molécula y otro para subíndices como números.
    v_ELEMENTS_ARRAY STRING_ARRAY_TYPE := STRING_ARRAY_TYPE(); -- Array para almacenar los elementos de la molécula.
    v_SUBSCRIPTS_ARRAY NUMBER_ARRAY_TYPE := NUMBER_ARRAY_TYPE(); -- Array para almacenar los subíndices de los elementos.

    v_ELEMENT VARCHAR2(2); -- Variable para almacenar un elemento químico.
    v_SUBSCRIPT NUMBER := 1; -- Variable para almacenar el subíndice del elemento.
    v_INDEX NUMBER := 1; -- Variable para rastrear la posición actual en la cadena.
    v_OUTPUT VARCHAR2(4000) := ''; -- Variable para almacenar el resultado final.

    v_MOLECULE_ATOMIC_WEIGHT NUMBER := 0; -- Inicializar el peso atómico total acumulado.
BEGIN
    -- Verificar si la molécula comienza con un carácter alfabético.
    IF NOT REGEXP_LIKE(SUBSTR(v_MOLECULE, 1, 1), '[A-Z]') THEN
        RETURN 'Error: La molécula debe empezar por un carácter alfabético.';
    END IF;

    -- Recorrer la cadena de la molécula
    WHILE v_INDEX <= LENGTH(v_MOLECULE) LOOP
        -- Verificar si el carácter actual es una letra mayúscula (indicativo de un elemento químico).
        IF REGEXP_LIKE(SUBSTR(v_MOLECULE, v_INDEX, 1), '[A-Z]') THEN
            v_ELEMENT := SUBSTR(UPPER(v_MOLECULE), v_INDEX, 1); -- Almacenar el elemento químico.

            -- Verificar si el siguiente carácter es una letra minúscula (para elementos químicos con dos caracteres).
            IF REGEXP_LIKE(SUBSTR(v_MOLECULE, v_INDEX+1, 1), '[a-z]') THEN
                v_ELEMENT := v_ELEMENT || SUBSTR(LOWER(v_MOLECULE), v_INDEX+1, 1); -- Concatenar el segundo carácter al elemento.
                v_INDEX := v_INDEX + 1; -- Incrementar el índice para omitir el siguiente carácter (ya procesado).
            END IF;
            
            -- Verificar si el siguiente carácter es un dígito (para obtener el subíndice del elemento).
            IF REGEXP_LIKE(SUBSTR(v_MOLECULE, v_INDEX+1, 1), '[0-9]') THEN
                v_SUBSCRIPT := TO_NUMBER(REGEXP_SUBSTR(v_MOLECULE, '[0-9]+', v_INDEX+1)); -- Obtener el subíndice como número.
                v_INDEX := v_INDEX + LENGTH(TO_CHAR(v_SUBSCRIPT)) - 1; -- Incrementar el índice para omitir los dígitos del subíndice.
            ELSE
                v_SUBSCRIPT := 1; -- Si no hay un subíndice, se asume 1.
            END IF;

            -- Agregar el elemento y su subíndice a los arrays correspondientes.
            v_ELEMENTS_ARRAY.EXTEND;
            v_ELEMENTS_ARRAY(v_ELEMENTS_ARRAY.COUNT) := v_ELEMENT;

            v_SUBSCRIPTS_ARRAY.EXTEND;
            v_SUBSCRIPTS_ARRAY(v_SUBSCRIPTS_ARRAY.COUNT) := v_SUBSCRIPT;
        END IF;

        v_INDEX := v_INDEX + 1; -- Avanzar al siguiente carácter en la cadena.
    END LOOP;

    -- Recorrer los arrays para obtener el peso atómico total.
    FOR i IN 1..LEAST(v_ELEMENTS_ARRAY.COUNT, v_SUBSCRIPTS_ARRAY.COUNT) LOOP
        -- Construir el resultado concatenando los elementos y sus subíndices.
        DBMS_OUTPUT.PUT_LINE(v_OUTPUT || 'Elemento ' || i || ': ' || v_ELEMENTS_ARRAY(i) || CHR(10) || 'Subíndice ' || i || ': ' || v_SUBSCRIPTS_ARRAY(i));

        v_MOLECULE_ATOMIC_WEIGHT := v_MOLECULE_ATOMIC_WEIGHT + ELEMENT_ATOMIC_WEIGHT(v_ELEMENTS_ARRAY(i), v_SUBSCRIPTS_ARRAY(i));
    END LOOP;

    RETURN v_MOLECULE_ATOMIC_WEIGHT; -- Devolver el resultado final.
END;
/