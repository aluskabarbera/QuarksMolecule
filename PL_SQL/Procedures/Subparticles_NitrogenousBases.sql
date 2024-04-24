CREATE OR REPLACE PROCEDURE SUBPARTICLES_NITROGENOUSBASES(p_ARN VARCHAR2) IS
    v_ARN VARCHAR2(32767) := UPPER(p_ARN); -- Variable para almacenar la cadena de ARN.
    -- Definición de un tipo de array de cadenas de caracteres.
    TYPE STRING_ARRAY_TYPE IS VARRAY(32767) OF VARCHAR2(32767);
    
    -- Declaración de array, para almacenar el símbolo de las Bases Nitrogenadas.
    v_NB_ARRAY_P STRING_ARRAY_TYPE := STRING_ARRAY_TYPE();
    v_NB_ARRAY_S STRING_ARRAY_TYPE := STRING_ARRAY_TYPE();

    -- Declaración de array, para almacenar los símbolos de las Bases Nitrogenadas.
    v_NB_SYMBOL_P VARCHAR2(32767); 
    v_NB_SYMBOL_S VARCHAR2(32767); 

    v_NB_NAME_P VARCHAR2(32767);
    v_NB_NAME_S VARCHAR2(32767);

    v_NB_CHEMICALFORMULA_P VARCHAR2(32767);
    v_NB_CHEMICALFORMULA_S VARCHAR2(32767);

    v_ADENINAS_COUNT_P NUMBER := 0;
    v_ADENINAS_COUNT_S NUMBER := 0;

    v_CITOSINAS_COUNT_P NUMBER := 0;
    v_CITOSINAS_COUNT_S NUMBER := 0;

    v_GUANINAS_COUNT_P NUMBER := 0;
    v_GUANINAS_COUNT_S NUMBER := 0;

    v_URACILOS_COUNT_P NUMBER := 0;
    v_URACILOS_COUNT_S NUMBER := 0;

    -- Declaración de array, para almacenar lso codones.
    v_C_ARRAY_P STRING_ARRAY_TYPE := STRING_ARRAY_TYPE();
    v_C_ARRAY_S STRING_ARRAY_TYPE := STRING_ARRAY_TYPE();

    -- Codones
    v_CODON_P VARCHAR2(32767);
    v_CODON_S VARCHAR2(32767);

    v_CODONES_P VARCHAR2(32767);
    v_CODONES_S VARCHAR2(32767);

    v_CODONES_COUNT_P NUMBER := 0;
    v_CODONES_COUNT_S NUMBER := 0;

    -- Aminoacidos
    v_A_NAME_P VARCHAR2(32767);
    v_A_NAME_S VARCHAR2(32767);

    v_A_CHEMICALFORMULA_P VARCHAR2(32767);
    v_A_CHEMICALFORMULA_S VARCHAR2(32767);

    v_INDEX NUMBER := 1; -- Variable para rastrear la posición actual en la cadena.
BEGIN
    -- Recorrer la cadena de la molécula.
    WHILE v_INDEX <= LENGTH(v_ARN) LOOP
        -- Verificar si la molécula de ARN contiene algún dígito numérico.
        IF REGEXP_LIKE(SUBSTR(v_ARN, v_INDEX, 1), '[0-9]') THEN
            -- Lanzar una excepción con un mensaje personalizado.
            RAISE_APPLICATION_ERROR(-20001, 'Error: La molécula de ARN no debe de contener dígitos numéricos.');
        END IF;

        -- Verificar si la molécula de ARN contiene algún caracter especial.
        IF REGEXP_LIKE(SUBSTR(v_ARN, v_INDEX, 1), '[^ACGU_]') THEN
            -- Lanzar una excepción con un mensaje personalizado.
            RAISE_APPLICATION_ERROR(-20002, 'Error: La molécula de ARN no debe contener caracteres especiales diferentes de A, C, G, U y _.');
        END IF;

        -- Verificar si el carácter actual es una Uracil (indicativo de una Base Nitrogoneda con símbolo U).
        IF SUBSTR(v_ARN, v_INDEX, 1) = 'U' THEN
            v_NB_ARRAY_P.EXTEND;
            v_NB_ARRAY_P(v_NB_ARRAY_P.COUNT) := 'U';
            v_URACILOS_COUNT_P := v_URACILOS_COUNT_P + 1;

            v_NB_ARRAY_S.EXTEND;
            v_NB_ARRAY_S(v_NB_ARRAY_S.COUNT) := 'A';
            v_ADENINAS_COUNT_S := v_ADENINAS_COUNT_S + 1;

        ELSIF SUBSTR(v_ARN, v_INDEX, 1) = 'A' THEN -- Verificar si el carácter actual es una Adenina (indicativo de una Base Nitrogoneda con símbolo A).
            v_NB_ARRAY_P.EXTEND;
            v_NB_ARRAY_P(v_NB_ARRAY_P.COUNT) := 'A';
            v_ADENINAS_COUNT_P := v_ADENINAS_COUNT_P + 1;

            v_NB_ARRAY_S.EXTEND;
            v_NB_ARRAY_S(v_NB_ARRAY_S.COUNT) := 'U';
            v_URACILOS_COUNT_S := v_URACILOS_COUNT_S + 1;

        ELSIF SUBSTR(v_ARN, v_INDEX, 1) = 'C' THEN -- Verificar si el carácter actual es una Citosina (indicativo de una Base Nitrogoneda con símbolo C).
            v_NB_ARRAY_P.EXTEND;
            v_NB_ARRAY_P(v_NB_ARRAY_P.COUNT) := 'C';
            v_CITOSINAS_COUNT_P := v_CITOSINAS_COUNT_P + 1;

            v_NB_ARRAY_S.EXTEND;
            v_NB_ARRAY_S(v_NB_ARRAY_S.COUNT) := 'G';
            v_GUANINAS_COUNT_S := v_GUANINAS_COUNT_S + 1;

        ELSIF SUBSTR(v_ARN, v_INDEX, 1) = 'G' THEN -- Verificar si el carácter actual es una Guanina (indicativo de una Base Nitrogoneda con símbolo G).
            v_NB_ARRAY_P.EXTEND;
            v_NB_ARRAY_P(v_NB_ARRAY_P.COUNT) := 'G';
            v_GUANINAS_COUNT_P := v_GUANINAS_COUNT_P + 1;

            v_NB_ARRAY_S.EXTEND;
            v_NB_ARRAY_S(v_NB_ARRAY_S.COUNT) := 'C';
            v_CITOSINAS_COUNT_S := v_CITOSINAS_COUNT_S + 1;
        END IF;

        v_INDEX := v_INDEX + 1; -- Avanzar al siguiente carácter en la cadena.
    END LOOP;

    v_INDEX := v_INDEX - 1;
    
    DBMS_OUTPUT.PUT_LINE(CHR(10) || '                  #· Bases Nitrogenadas ·#                      ');

    DBMS_OUTPUT.PUT_LINE('Las Bases Nitrogenadas son un componente específico de los nucleótidos, los nucleótidos son moléculas más grandes que también incluyen azúcares y grupos fosfato, además de las bases nitrogenadas.');
    DBMS_OUTPUT.PUT_LINE('Hay un total de Bases Nitrogenadas [Primary Chain] & [Secondary Chain]: ' || v_INDEX || CHR(10));

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Hay un total de Bases Nitrogenadas [Primary Chain]:   ' || v_ADENINAS_COUNT_P || ' Adeninas, ' || v_CITOSINAS_COUNT_P || ' Citosinas, ' || v_GUANINAS_COUNT_P || ' Guaninas y ' || v_URACILOS_COUNT_P || ' Uracilos');
    DBMS_OUTPUT.PUT_LINE('Hay un total de Bases Nitrogenadas [Secondary Chain]: ' || v_ADENINAS_COUNT_S || ' Adeninas, ' || v_CITOSINAS_COUNT_S || ' Citosinas, ' || v_GUANINAS_COUNT_S || ' Guaninas y ' || v_URACILOS_COUNT_S || ' Uracilos' || CHR(10));

    -- Recorrer el array v_NB_ARRAY_P y concatenar los símbolos de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_P.COUNT LOOP
        v_NB_SYMBOL_P := v_NB_SYMBOL_P || v_NB_ARRAY_P(i);
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_P.COUNT THEN
            v_NB_SYMBOL_P := v_NB_SYMBOL_P || ' + ';
        END IF;
    END LOOP;

    -- Recorrer el array v_NB_ARRAY_S y concatenar los símbolos de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_S.COUNT LOOP
        v_NB_SYMBOL_S := v_NB_SYMBOL_S || v_NB_ARRAY_S(i);
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_S.COUNT THEN
            v_NB_SYMBOL_S := v_NB_SYMBOL_S || ' + ';
        END IF;
    END LOOP;

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Símbolo de las Bases Nitrogenadas [Primary Chain]:    ' || v_NB_SYMBOL_P);
    DBMS_OUTPUT.PUT_LINE('Símbolo de las Bases Nitrogenadas [Secondary Chain]:  ' || v_NB_SYMBOL_S || CHR(10));

    -- Recorrer el array v_NB_ARRAY_P y concatenar los nombres de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_P.COUNT LOOP
        v_NB_NAME_P := v_NB_NAME_P || GET_NITROGENOUSBASE_NAME(v_NB_ARRAY_P(i));
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_P.COUNT THEN
            v_NB_NAME_P := v_NB_NAME_P || ' + ';
        END IF;
    END LOOP;

    -- Recorrer el array v_NB_ARRAY_S y concatenar los nombres de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_S.COUNT LOOP
        v_NB_NAME_S := v_NB_NAME_S || GET_NITROGENOUSBASE_NAME(v_NB_ARRAY_S(i));
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_S.COUNT THEN
            v_NB_NAME_S := v_NB_NAME_S || ' + ';
        END IF;
    END LOOP;

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Nombre de las Bases Nitrogenadas [Primary Chain]:    ' || v_NB_NAME_P);
    DBMS_OUTPUT.PUT_LINE('Nombre de las Bases Nitrogenadas [Secondary Chain]:  ' || v_NB_NAME_S || CHR(10));

    -- Recorrer el array v_NB_ARRAY_P y obtener las formulas quimicas de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_P.COUNT LOOP
        v_NB_CHEMICALFORMULA_P := v_NB_CHEMICALFORMULA_P || GET_NITROGENOUSBASE_CHEMICALFORMULA(v_NB_ARRAY_P(i));
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_P.COUNT THEN
            v_NB_CHEMICALFORMULA_P := v_NB_CHEMICALFORMULA_P || ' + ';
        END IF;
    END LOOP;

    -- Recorrer el array v_NB_ARRAY_S y obtener las formulas quimicas de las bases nitrogenadas.
    FOR i IN 1..v_NB_ARRAY_S.COUNT LOOP
        v_NB_CHEMICALFORMULA_S := v_NB_CHEMICALFORMULA_S || GET_NITROGENOUSBASE_CHEMICALFORMULA(v_NB_ARRAY_S(i));
        -- Agregar un '+' después de cada elemento, excepto para el último.
        IF i < v_NB_ARRAY_S.COUNT THEN
            v_NB_CHEMICALFORMULA_S := v_NB_CHEMICALFORMULA_S || ' + ';
        END IF;
    END LOOP;

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Formula química de las Bases Nitrogenadas [Primary Chain]:    ' || v_NB_CHEMICALFORMULA_P);
    DBMS_OUTPUT.PUT_LINE('Formula química de las Bases Nitrogenadas [Secondary Chain]:  ' || v_NB_CHEMICALFORMULA_S || CHR(10));

    -- #· AMINOACIDOS ·#
    -- Cada tres bases nitrogenadas se consideran un aminoácido.
    DBMS_OUTPUT.PUT_LINE('                  #· Aminoacidos ·#                      ');
    DBMS_OUTPUT.PUT_LINE('Cada 3 Bases Nitrogenadas se consideran 1 aminoácido.');

    -- Recorrer el array v_NB_ARRAY_P y concatenar las tres bases nitrogenadas, para que se considere un aminoácido.
    FOR i IN 1..v_NB_ARRAY_P.COUNT LOOP
        v_CODON_P := v_CODON_P || v_NB_ARRAY_P(i);

        -- Cuando se completan tres bases, añadir el codon al array.
        IF MOD(i, 3) = 0 THEN
            v_C_ARRAY_P.EXTEND;
            v_C_ARRAY_P(v_C_ARRAY_P.COUNT) := v_CODON_P;
            v_CODON_P := NULL; -- Restablecer el valor del codon para el próximo conjunto de tres bases.
        END IF;
    END LOOP;

    -- Recorrer el array v_NB_ARRAY_S y concatenar las tres bases nitrogenadas, para que se considere un aminoácido.
    FOR i IN 1..v_NB_ARRAY_S.COUNT LOOP
        v_CODON_S := v_CODON_S || v_NB_ARRAY_S(i);
        
        -- Cuando se completan tres bases, añadir el codon al array.
        IF MOD(i, 3) = 0 THEN
            v_C_ARRAY_S.EXTEND;
            v_C_ARRAY_S(v_C_ARRAY_S.COUNT) := v_CODON_S;
            v_CODON_S := NULL; -- Restablecer el valor del codon para el próximo conjunto de tres bases.
        END IF;
    END LOOP;

    -- Contador de codones.
    v_CODONES_COUNT_P := v_C_ARRAY_P.COUNT;
    v_CODONES_COUNT_S := v_C_ARRAY_S.COUNT;

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Hay un total de codones [Primary Chain]: ' || v_CODONES_COUNT_P);
    DBMS_OUTPUT.PUT_LINE('Hay un total de codones [Secondary Chain]: ' || v_CODONES_COUNT_S || CHR(10));

    -- Mostrar los codones separados por un '+'.
    FOR i IN 1..v_C_ARRAY_P.COUNT LOOP
        v_CODONES_P := v_CODONES_P || v_C_ARRAY_P(i);
        -- Agregar un '+' después de cada tres bases nitrogenadas, excepto para el último.
        IF i < v_C_ARRAY_P.COUNT THEN
            v_CODONES_P := v_CODONES_P || ' + ';
        END IF;
    END LOOP;

    FOR i IN 1..v_C_ARRAY_S.COUNT LOOP
        v_CODONES_S := v_CODONES_S || v_C_ARRAY_S(i);
        -- Agregar un '+' después de cada tres bases nitrogenadas, excepto para el último.
        IF i < v_C_ARRAY_S.COUNT THEN
            v_CODONES_S := v_CODONES_S || ' + ';
        END IF;
    END LOOP;

    IF (v_CODON_P IS NOT NULL)  THEN
        DBMS_OUTPUT.PUT_LINE('Codones [Primary Chain]:    ' || v_CODONES_P || ' + ' || v_CODON_P);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Codones [Primary Chain]:    ' || v_CODONES_P);
    END IF;

    IF v_CODON_S IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Codones [Secondary Chain]:  ' || v_CODONES_S || ' + ' || v_CODON_S);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Codones [Secondary Chain]:  ' || v_CODONES_S || CHR(10));
    END IF;

    -- Mostrar el nombre de los aminoacidos separados por un '+'.
    FOR i IN 1..v_C_ARRAY_P.COUNT LOOP
        v_A_NAME_P := v_A_NAME_P || GET_AMINOACID_NAME(v_C_ARRAY_P(i));
        -- Agregar un '+' después de cada tres aminoacidos, excepto para el último.
        IF i < v_C_ARRAY_P.COUNT THEN
            v_A_NAME_P := v_A_NAME_P || ' + ';
        END IF;
    END LOOP;

    FOR i IN 1..v_C_ARRAY_S.COUNT LOOP
        v_A_NAME_S := v_A_NAME_S || GET_AMINOACID_NAME(v_C_ARRAY_S(i));
        -- Agregar un '+' después de cada tres aminoacidos, excepto para el último.
        IF i < v_C_ARRAY_S.COUNT THEN
            v_A_NAME_S := v_A_NAME_S || ' + ';
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Los codones son secuencias de nucleótidos en el ARNm que codifican para aminoácidos específicos durante la síntesis de proteínas.' || CHR(10));
    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Nombre del aminoacido [Primary Chain]:   ' || v_A_NAME_P);
    DBMS_OUTPUT.PUT_LINE('Nombre del aminoacido [Secondary Chain]: ' || v_A_NAME_S || CHR(10));

    -- Mostrar los codones separados por un '+'.
    FOR i IN 1..v_C_ARRAY_P.COUNT LOOP
        v_A_CHEMICALFORMULA_P := v_A_CHEMICALFORMULA_P || GET_AMINOACID_CHEMICALFORMULA(v_C_ARRAY_P(i));
        -- Agregar un '+' después de cada tres bases nitrogenadas, excepto para el último.
        IF i < v_C_ARRAY_P.COUNT THEN
            v_A_CHEMICALFORMULA_P := v_A_CHEMICALFORMULA_P || ' + ';
        END IF;
    END LOOP;

    FOR i IN 1..v_C_ARRAY_S.COUNT LOOP
        v_A_CHEMICALFORMULA_S := v_A_CHEMICALFORMULA_S || GET_AMINOACID_CHEMICALFORMULA(v_C_ARRAY_S(i));
        -- Agregar un '+' después de cada tres bases nitrogenadas, excepto para el último.
        IF i < v_C_ARRAY_S.COUNT THEN
            v_A_CHEMICALFORMULA_S := v_A_CHEMICALFORMULA_S || ' + ';
        END IF;
    END LOOP;

    -- Mostrar los resultados.
    DBMS_OUTPUT.PUT_LINE('Formula química de los codones [Primary Chain]:   ' || v_A_CHEMICALFORMULA_P);
    DBMS_OUTPUT.PUT_LINE('Formula química de los codones [Secondary Chain]: ' || v_A_CHEMICALFORMULA_S || CHR(10));

END Subparticles_NITROGENOUSBases;