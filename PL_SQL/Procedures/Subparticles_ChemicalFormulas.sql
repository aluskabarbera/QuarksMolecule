CREATE OR REPLACE PROCEDURE Subparticles_ChemicalFormulas(p_WEIGHT IN NUMBER, p_MOLECULE IN VARCHAR2) IS
    -- Declaración de variables.
    v_WEIGHT NUMBER := p_WEIGHT;
    v_MOLECULE VARCHAR2(20) := p_MOLECULE;

    -- Definición de un tipo de array de cadenas de caracteres.
    TYPE STRING_ARRAY_TYPE IS VARRAY(100) OF VARCHAR2(30);
    -- Definición de un tipo de array de números.
    TYPE NUMBER_ARRAY_TYPE IS VARRAY(100) OF NUMBER(30);

    -- Declaración de dos arrays, uno para almacenar elementos de la molécula y otro para subíndices como números.
    v_ELEMENTS_ARRAY STRING_ARRAY_TYPE := STRING_ARRAY_TYPE(); -- Array para almacenar los elementos de la molécula.
    v_SUBSCRIPTS_ARRAY NUMBER_ARRAY_TYPE := NUMBER_ARRAY_TYPE(); -- Array para almacenar los subíndices de los elementos.

    v_ELEMENT VARCHAR2(2); -- Variable para almacenar un elemento químico.
    v_ELEMENT_NAME VARCHAR2(255); -- Variable para almacenar el nombre del elemento de la tabla ELEMENTS.

    v_SUBSCRIPT NUMBER := 1; -- Variable para almacenar el subíndice del elemento.
    v_INDEX NUMBER := 1; -- Variable para rastrear la posición actual en la cadena.
    v_OUTPUT VARCHAR2(4000) := ''; -- Variable para mostrar el resultado de la molecula separada por elementos y subindices.

    v_MOLECULE_ATOMIC_WEIGHT NUMBER := 0; -- Peso atómico total de los elementos de la molécula.
    v_MOLS NUMBER; -- Variable para almacenar los cantidad de moles.
    v_MOLECULES NUMBER; -- Variable para almacenar los cantidad de molecules.
    v_ATOMS NUMBER; -- Variable para almacenar los cantidad de átomos de cada elemento.
    v_PROTONS NUMBER; -- Variable para almacenar los cantidad de PROTONES.
    v_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de NEUTRONES.

    -- #· PROTONS ·# --
    v_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de QUARKS UP que hay en los PROTONES de cada elemento.
    v_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de QUARKS DOWN que hay en los PROTONES de cada elemento.

    v_MeV_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de energia que hay en MeV/C^2 QUARKS UP que hay en los PROTONES de cada elemento.
    v_eV_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en eV/C^2 QUARKS UP que hay en los PROTONES de cada elemento.
    v_J_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en J/C^2 QUARKS UP que hay en los PROTONES de cada elemento.
    v_Kg_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en Kg/C^2 QUARKS UP que hay en los PROTONES de cada elemento.
    v_Kg_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar los cantidad de de masa que hay en Kg QUARKS UP que hay en los PROTONES de cada elemento.

    v_MeV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de QUARKS DOWN que hay en los PROTONES de cada elemento.
    v_eV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en eV/C^2 QUARKS DOWN que hay en los PROTONES de cada elemento.
    v_J_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en J/C^2 QUARKS DOWN que hay en los PROTONES de cada elemento.
    v_Kg_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en Kg/C^2 QUARKS DOWN que hay en los PROTONES de cada elemento.
    v_Kg_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar los cantidad de de masa que hay en Kg QUARKS DOWN que hay en los PROTONES de cada elemento.

    -- #· NEUTRONS ·# --
    v_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de QUARKS UP que hay en los NEUTRONES de cada elemento.
    v_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de QUARKS DOWN que hay en los NEUTRONES de cada elemento.

    v_MeV_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de QUARKS UP que hay en los NEUTRONES de cada elemento.
    v_eV_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en eV/C^2 QUARKS UP que hay en los NEUTRONES de cada elemento.
    v_J_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en J/C^2 QUARKS UP que hay en los NEUTRONES de cada elemento.
    v_Kg_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en Kg/C^2 QUARKS UP que hay en los NEUTRONES de cada elemento.
    v_Kg_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de masa que hay en Kg QUARKS UP que hay en los NEUTRONES de cada elemento.

    v_MeV_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de QUARKS DOWN que hay en los NEUTRONES de cada elemento.
    v_eV_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en eV/C^2 QUARKS DOWN que hay en los NEUTRONES de cada elemento.
    v_J_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en J/C^2 QUARKS DOWN que hay en los NEUTRONES de cada elemento.
    v_Kg_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de energia que hay en Kg/C^2 QUARKS DOWN que hay en los NEUTRONES de cada elemento.
    v_Kg_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar los cantidad de de masa que hay en Kg QUARKS DOWN que hay en los NEUTRONES de cada elemento.
BEGIN
    -- Verificar si la molécula comienza con un carácter alfabético.
    IF NOT REGEXP_LIKE(SUBSTR(v_MOLECULE, 1, 1), '[A-Z]') THEN
        -- Lanzar una excepción con un mensaje personalizado.
        RAISE_APPLICATION_ERROR(-20001, 'Error: La molécula debe empezar por un carácter alfabético.');
    END IF;

    -- Recorrer la cadena de la molécula.
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
        
        -- Calculamos el peso atómico total de la molecula.
        v_MOLECULE_ATOMIC_WEIGHT := v_MOLECULE_ATOMIC_WEIGHT + ELEMENT_ATOMIC_WEIGHT(v_ELEMENTS_ARRAY(i), v_SUBSCRIPTS_ARRAY(i));
    END LOOP;

    -- Imprimir pesto atómico totalde la molecula.
    DBMS_OUTPUT.PUT_LINE('Peso atómico total de la molecula: ' || v_MOLECULE_ATOMIC_WEIGHT);

    -- moles = weight * mol / atomicweight
    v_MOLS := MOLS(v_WEIGHT, v_MOLECULE_ATOMIC_WEIGHT);
    DBMS_OUTPUT.PUT_LINE('moles: ' || v_MOLS);

    -- molecules = moles * avogadro / mol
    v_MOLECULES := MOLECULES(v_MOLS);
    DBMS_OUTPUT.PUT_LINE('moleculas: ' || v_MOLECULES || CHR(10));

    -- Recorrer el array de los subindices para obtener los atomos de cada elemento.
    FOR i IN 1..LEAST(v_ELEMENTS_ARRAY.COUNT, v_SUBSCRIPTS_ARRAY.COUNT) LOOP
        -- Obtener el nombre del elemento de la tabla ELEMENTS.
        SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY(i);

        -- atoms = molecules * subscript / molecule 
        v_ATOMS := ATOMS(v_MOLECULES, v_SUBSCRIPTS_ARRAY(i));
        DBMS_OUTPUT.PUT_LINE('átomos del elemento ' || v_ELEMENT_NAME || ': ' || v_ATOMS);

        -- #· PROTONS ·# --
        -- protons = atoms * elements[a]['Protons'] / atom 
        v_PROTONS := PROTONS(v_ELEMENTS_ARRAY(i), v_ATOMS);
        DBMS_OUTPUT.PUT_LINE('Protones en los átomos del elemento ' ||  v_ELEMENT_NAME || ': ' || v_PROTONS || CHR(10));

        -- QUARK UP PROTONS --
        -- quarksup_protons = quarksup_arein_protons * protons / proton 
        v_QUARKSUP_PROTONS := QUARKSUP_PROTONS(v_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Quarks Up: ' || v_QUARKSUP_PROTONS);

        -- MeV_C2_QUARKSUP_PROTONS = quarksup_protons * 2.2 MeV / c^2
        v_MeV_C2_QUARKSUP_PROTONS := MeV_C2_QUARKSUP_PROTONS(v_QUARKSUP_PROTONS);
        DBMS_OUTPUT.PUT_LINE('MeV/c^2: ' || v_MeV_C2_QUARKSUP_PROTONS);

        -- eV_C2_quarksup_protons = MeV_C2_QUARKSUP_PROTONS * 1000000 eV / c^2 / 1 MeV
        v_eV_C2_QUARKSUP_PROTONS := eV_C2_QUARKSUP_PROTONS(v_MeV_C2_QUARKSUP_PROTONS);
        DBMS_OUTPUT.PUT_LINE('eV/c^2: ' || v_eV_C2_QUARKSUP_PROTONS);

        -- J_C2_quarksup_protons = eV_C2_quarksup_protons * 0.000000000000000000160217733 J / c^2 / 1 eV
        v_J_C2_QUARKSUP_PROTONS := J_C2_QUARKSUP_PROTONS(v_eV_C2_QUARKSUP_PROTONS);
        DBMS_OUTPUT.PUT_LINE('J/c^2:  ' || v_J_C2_QUARKSUP_PROTONS);

        -- Kg_C2_quarksup_protons = J_C2_quarksup_protons * 0.00000000000000001112650056 Kg / c^2 / 1 J
        v_Kg_C2_QUARKSUP_PROTONS := Kg_C2_QUARKSUP_PROTONS(v_J_C2_QUARKSUP_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Kg/c^2: ' || v_Kg_C2_QUARKSUP_PROTONS);

        -- Kg_quarksup_protons = Kg_C2_quarksup_protons / c^2
        v_Kg_QUARKSUP_PROTONS := Kg_QUARKSUP_PROTONS(v_Kg_C2_QUARKSUP_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Kg: ' || v_Kg_QUARKSUP_PROTONS || CHR(10));

        -- QUARKS DOWN PROTONS --
        -- quarksdown_protons = quarksdown_arein_protons * protons / proton
        v_QUARKSDOWN_PROTONS := QUARKSDOWN_PROTONS(v_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Quarks Down: ' || v_QUARKSDOWN_PROTONS );

        -- MeV_C2_quarksdown_protons = quarksdown_protons * 4.7 MeV / c^2
        v_MeV_C2_QUARKSDOWN_PROTONS := MeV_C2_QUARKSDOWN_PROTONS(v_QUARKSDOWN_PROTONS);
        DBMS_OUTPUT.PUT_LINE('MeV/c^2: ' || v_MeV_C2_QUARKSDOWN_PROTONS);

        -- eV_C2_quarksdown_protons = MeV_C2_quarksdown_protons * 1000000 eV / c^2 / 1 MeV
        v_eV_C2_QUARKSDOWN_PROTONS := eV_C2_QUARKSDOWN_PROTONS(v_MeV_C2_QUARKSDOWN_PROTONS);
        DBMS_OUTPUT.PUT_LINE('eV/c^2: ' || v_eV_C2_QUARKSDOWN_PROTONS);

        -- J_C2_quarksdown_protons = eV_C2_quarksdown_protons * 0.000000000000000000160217733 J / c^2 / 1 eV
        v_J_C2_QUARKSDOWN_PROTONS := J_C2_QUARKSDOWN_PROTONS(v_eV_C2_QUARKSDOWN_PROTONS);
        DBMS_OUTPUT.PUT_LINE('J/c^2:  ' || v_J_C2_QUARKSDOWN_PROTONS);

        -- Kg_C2_quarksdown_protons = J_C2_quarksdown_protons * 0.00000000000000001112650056 Kg / c^2 / 1 J
        v_Kg_C2_QUARKSDOWN_PROTONS := Kg_C2_QUARKSDOWN_PROTONS(v_J_C2_QUARKSDOWN_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Kg/c^2: ' || v_Kg_C2_QUARKSDOWN_PROTONS);

        -- Kg_quarksdown_protons = Kg_C2_quarksdown_protons / c^2
        v_Kg_QUARKSDOWN_PROTONS := Kg_QUARKSDOWN_PROTONS(v_Kg_C2_QUARKSDOWN_PROTONS);
        DBMS_OUTPUT.PUT_LINE('Kg: ' || v_Kg_QUARKSDOWN_PROTONS || CHR(10));

        -- #· NEUTRONS ·# --
        -- neutrons = atoms * elements[a]['Neutrons'] / atom
        v_NEUTRONS := NEUTRONS(v_ELEMENTS_ARRAY(i), v_ATOMS);
        DBMS_OUTPUT.PUT_LINE('Neutrones en los átomos del elemento ' ||  v_ELEMENT_NAME || ': ' || v_NEUTRONS || CHR(10));

        -- QUARKS UP NEUTRONS --
        -- quarksup_neutrons = quarksup_arein_neutrons * neutrons / neutron
        v_QUARKSUP_NEUTRONS := QUARKSUP_NEUTRONS(v_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Quarks Up: ' || v_QUARKSUP_NEUTRONS);

        -- MeV_C2_quarksup_neutrons = quarksup_neutrons * 2.2 MeV / c^2
        v_MeV_C2_QUARKSUP_NEUTRONS := MeV_C2_QUARKSUP_NEUTRONS(v_QUARKSUP_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('MeV/c^2: ' || v_MeV_C2_QUARKSUP_NEUTRONS);

        -- eV_C2_quarksup_neutrons = MeV_C2_quarksup_neutrons * 1000000 eV / c^2 / 1 MeV
        v_eV_C2_QUARKSUP_NEUTRONS := eV_C2_QUARKSUP_NEUTRONS(v_MeV_C2_QUARKSUP_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('eV/c^2: ' || v_eV_C2_QUARKSUP_NEUTRONS);

        -- J_C2_quarksup_neutrons = eV_C2_quarksup_neutrons * 0.000000000000000000160217733 J / c^2 / 1 eV
        v_J_C2_QUARKSUP_NEUTRONS := J_C2_QUARKSUP_NEUTRONS(v_eV_C2_QUARKSUP_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('J/c^2: ' || v_J_C2_QUARKSUP_NEUTRONS);

        -- Kg_C2_quarksup_neutrons = J_C2_quarksup_neutrons * 0.00000000000000001112650056 Kg / c^2 / 1 J
        v_Kg_C2_QUARKSUP_NEUTRONS := Kg_C2_QUARKSUP_NEUTRONS(v_J_C2_QUARKSUP_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Kg/c^2: ' || v_Kg_C2_QUARKSUP_NEUTRONS);

        -- Kg_quarksup_neutrons = Kg_C2_quarksup_neutrons / c^2
        v_Kg_QUARKSUP_NEUTRONS := Kg_QUARKSUP_NEUTRONS(v_Kg_C2_QUARKSUP_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Kg: ' || v_Kg_QUARKSUP_NEUTRONS || CHR(10));

        -- QUARKS DOWN NEUTRONS --
        -- quarksdown_neutrons = quarksdown_arein_neutrons * neutrons / neutron
        v_QUARKSDOWN_NEUTRONS := QUARKSDOWN_NEUTRONS(v_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Quarks Down: ' || v_QUARKSDOWN_NEUTRONS);

        -- MeV_C2_quarksdown_neutrons = quarksdown_neutrons * 4.7 MeV / c^2
        v_MeV_C2_QUARKSDOWN_NEUTRONS := MeV_C2_QUARKSDOWN_NEUTRONS(v_QUARKSDOWN_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('MeV/c^2: ' || v_MeV_C2_QUARKSDOWN_NEUTRONS);

        -- eV_C2_quarksdown_neutrons = MeV_C2_quarksdown_neutrons * 1000000 eV / c^2 / 1 MeV
        v_eV_C2_QUARKSDOWN_NEUTRONS := eV_C2_QUARKSDOWN_NEUTRONS(v_MeV_C2_QUARKSDOWN_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('eV/c^2: ' || v_eV_C2_QUARKSDOWN_NEUTRONS);

        -- J_C2_quarksdown_neutrons = eV_C2_quarksdown_neutrons * 0.000000000000000000160217733 J / c^2 / 1 eV
        v_J_C2_QUARKSDOWN_NEUTRONS := J_C2_QUARKSDOWN_NEUTRONS(v_eV_C2_QUARKSDOWN_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('J/c^2: ' || v_J_C2_QUARKSDOWN_NEUTRONS);

        -- Kg_C2_quarksdown_neutrons = J_C2_quarksdown_neutrons * 0.00000000000000001112650056 Kg / c^2 / 1 J
        v_Kg_C2_QUARKSDOWN_NEUTRONS := Kg_C2_QUARKSDOWN_NEUTRONS(v_J_C2_QUARKSDOWN_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Kg/c^2: ' || v_Kg_C2_QUARKSDOWN_NEUTRONS);

        -- Kg_quarksdown_neutrons = Kg_C2_quarksdown_neutrons / c^2
        v_Kg_QUARKSDOWN_NEUTRONS := Kg_QUARKSDOWN_NEUTRONS(v_Kg_C2_QUARKSDOWN_NEUTRONS);
        DBMS_OUTPUT.PUT_LINE('Kg: ' || v_Kg_QUARKSDOWN_NEUTRONS || CHR(10));
    END LOOP;

END Subparticles_ChemicalFormulas;
/
