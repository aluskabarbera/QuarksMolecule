CREATE OR REPLACE FUNCTION ELEMENT_ATOMIC_WEIGHT(v_ELEMENTS_ARRAY IN VARCHAR2, v_SUBSCRIPTS_ARRAY IN NUMBER) RETURN NUMBER IS
    v_ELEMENT_ATOMIC_WEIGHT NUMBER := 0; -- Inicializar el peso atómico total.
    v_ELEMENT_ATOMIC_MASS NUMBER;
    v_ELEMENT_NAME VARCHAR2(255);
BEGIN
    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

    -- Obtener el peso atómico del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_ATOMIC_MASS INTO v_ELEMENT_ATOMIC_MASS FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

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

CREATE OR REPLACE FUNCTION MOLS(v_WEIGHT IN NUMBER, v_ELEMENT_ATOMIC_WEIGHT IN NUMBER) RETURN NUMBER IS
    v_MOLS NUMBER; -- Variable para almacenar el resultado final.
    v_MOL NUMBER := 1; -- Variable para almacenar una unidad de mol.
BEGIN
    
    -- Calculo de la cantidad de moles.
    v_MOLS := v_WEIGHT * v_MOL / v_ELEMENT_ATOMIC_WEIGHT;

    RETURN v_MOLS; 
END;
/

CREATE OR REPLACE FUNCTION MOLECULES(v_MOLS IN NUMBER) RETURN NUMBER IS
    v_MOL NUMBER := 1; -- Variable para almacenar una unidad de mol.
    v_AVOGADRO NUMBER := 6.02214076e23; -- Constante de Avogrado.
    v_MOLECULES NUMBER; -- Variable para almacenar el resultado final
BEGIN
    -- Calculo de la cantidad de moles.
    -- Multiplica el número de moléculas (v_MOLS) por la constante de Avogadro y luego divide por el número de moles (v_MOL).
    v_MOLECULES := v_MOLS * v_AVOGADRO / v_MOL;

    -- Devuelve el número de moles.
    RETURN v_MOLECULES; 
END;
/

CREATE OR REPLACE FUNCTION ATOMS(v_MOLECULES IN NUMBER, v_SUBSCRIPTS_ARRAY IN NUMBER) RETURN NUMBER IS
    v_ATOMS NUMBER; -- Variable para almacenar el resultado final.
    v_MOLECULE NUMBER := 1; -- Variable para almacenar una unidad de molecula.
BEGIN
    -- Calculo de la cantidad de atomos de cada elemento.
    v_ATOMS := v_MOLECULES * v_SUBSCRIPTS_ARRAY / v_MOLECULE;

    RETURN v_ATOMS; 
END;
/

CREATE OR REPLACE FUNCTION PROTONS(v_ELEMENTS_ARRAY IN VARCHAR2, v_ATOMS IN NUMBER) RETURN NUMBER IS
    v_PROTONS NUMBER; -- Variable para almacenar el resultado final.
    v_ATOM NUMBER := 1; -- Variable para almacenar una unidad de átomo.

    v_ELEMENT_NAME VARCHAR2(255); -- Variable para almacenar el nombre del elemento de la tabla ELEMENTS.
    v_ELEMENT_PROTONS NUMBER; -- Variable para almacenar la cantidad de protones del elemento de la tabla ELEMENTS.
BEGIN
    -- Obtener la cantidad de protones del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_PROTONS INTO v_ELEMENT_PROTONS FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_ELEMENT_PROTONS || ' PROTONES que posee por defecto un átomo de ' || v_ELEMENT_NAME || '.');
    
    -- Calculo de la cantidad de protones de cada elemento.
    v_PROTONS := v_ATOMS * v_ELEMENT_PROTONS / v_ATOM;

    RETURN v_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION QUARKSUP_PROTONS(v_PROTONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de quarks up.
    v_PROTON NUMBER := 1; -- Variable para almacenar una unidad de protón.

    v_PARTICLE_ID VARCHAR2(255) := 'Proton'; -- Variable para declarar la identidad del protón.
BEGIN
    -- Obtener la cantidad de quarks up que hay en un proton de cada elemento. [quarksupareinprotons = 2 ]
    SELECT DISTINCT QUARKS_UP_IN_PARTICLE INTO v_QUARKSUP_PROTONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_NAME_ID = v_PARTICLE_ID AND QUARKS_UP_IN_PARTICLE IS NOT NULL;
    
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSUP_PROTONS ||' QUARKS UP en un PROTON de cada elemento.');
    
    -- quarksupprotonsa = quarksupareinprotons * protonsa / proton 
    v_QUARKSUP_PROTONS := v_QUARKSUP_PROTONS * v_PROTONS / v_PROTON;
    
    RETURN v_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION QUARKSDOWN_PROTONS(v_PROTONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de quarks down.
    v_PROTON NUMBER := 1; -- Variable para almacenar una unidad de protón.

    v_PARTICLE_ID VARCHAR2(255) := 'Proton'; -- Variable para declarar la identidad del protón.
BEGIN
    -- Obtener la cantidad de quarks down que hay en un proton de cada elemento. [quarksdownareinprotons = 1 ]
    SELECT DISTINCT QUARKS_DOWN_IN_PARTICLE INTO v_QUARKSDOWN_PROTONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_NAME_ID = v_PARTICLE_ID AND QUARKS_DOWN_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSDOWN_PROTONS ||' QUARKS DOWN en un PROTON de cada elemento.');
    
    -- quarksdownprotonsa = quarksdownareinprotons * protonsa / proton
    v_QUARKSDOWN_PROTONS := v_QUARKSDOWN_PROTONS * v_PROTONS / v_PROTON;
    
    RETURN v_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION MeV_C2_QUARKSUP_PROTONS(v_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks up.

    v_QUARKUP_ID VARCHAR2(255) := 'Up'; -- Variable para declarar la identidad del quark up.
BEGIN
    -- Obtener la energia de los quarks up.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSUP_PROTONS FROM SUBPARTICLES WHERE SUBPARTICLE_NAME_ID = v_QUARKUP_ID;

    -- mev_c2_quarksup_protons = quarksup_protons * 2.2
    v_MeV_C2_QUARKSUP_PROTONS := v_QUARKSUP_PROTONS * v_MeV_C2_QUARKSUP_PROTONS;

    RETURN v_MeV_C2_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION eV_C2_QUARKSUP_PROTONS(v_MeV_C2_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV / c^2 / 1 MeV
    v_eV_C2_QUARKSUP_PROTONS := v_MeV_C2_QUARKSUP_PROTONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION J_C2_QUARKSUP_PROTONS(v_eV_C2_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J / c^2 / 1 eV
    v_J_C2_QUARKSUP_PROTONS := v_eV_C2_QUARKSUP_PROTONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_C2_QUARKSUP_PROTONS(v_J_C2_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN
    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg / c^2 / 1 J
    v_Kg_C2_QUARKSUP_PROTONS := v_J_C2_QUARKSUP_PROTONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_QUARKSUP_PROTONS(v_Kg_C2_QUARKSUP_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSUP_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSUP_PROTONS := v_Kg_C2_QUARKSUP_PROTONS / v_SPEED_OF_LIGHT_IN_A_VACUUM * v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSUP_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION MeV_C2_QUARKSDOWN_PROTONS(v_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks down.

    v_QUARKDOWN_ID VARCHAR2(255) := 'Down'; -- Variable para declarar la identidad del quark down.
BEGIN
    -- Obtener la energia de los quarks down.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSDOWN_PROTONS FROM SUBPARTICLES WHERE SUBPARTICLE_NAME_ID = v_QUARKDOWN_ID;    

    -- mev_c2_quarksdown_protons = quarksdown_protons * 4.7
    v_MeV_C2_QUARKSDOWN_PROTONS := v_QUARKSDOWN_PROTONS * v_MeV_C2_QUARKSDOWN_PROTONS;

    RETURN v_MeV_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION eV_C2_QUARKSDOWN_PROTONS(v_MeV_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV/c^2 / 1 MeV
    v_eV_C2_QUARKSDOWN_PROTONS := v_MeV_C2_QUARKSDOWN_PROTONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION J_C2_QUARKSDOWN_PROTONS(v_eV_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J/c^2 / 1 eV
    v_J_C2_QUARKSDOWN_PROTONS := v_eV_C2_QUARKSDOWN_PROTONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_C2_QUARKSDOWN_PROTONS(v_J_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN
    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg/c^2 / 1 J
    v_Kg_C2_QUARKSDOWN_PROTONS := v_J_C2_QUARKSDOWN_PROTONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_QUARKSDOWN_PROTONS(v_Kg_C2_QUARKSDOWN_PROTONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSDOWN_PROTONS := v_Kg_C2_QUARKSDOWN_PROTONS / v_SPEED_OF_LIGHT_IN_A_VACUUM * v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSDOWN_PROTONS; 
END;
/

CREATE OR REPLACE FUNCTION NEUTRONS(v_ELEMENTS_ARRAY IN VARCHAR2, v_ATOMS IN NUMBER) RETURN NUMBER IS
    v_NEUTRONS NUMBER; -- Variable para almacenar el resultado final.
    v_ATOM NUMBER := 1; -- Variable para almacenar una unidad de átomo.

    v_ELEMENT_NAME VARCHAR2(255); -- Variable para almacenar el nombre del elemento de la tabla ELEMENTS.
    v_ELEMENT_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de protones del elemento de la tabla ELEMENTS.
BEGIN
    -- Obtener la cantidad de neutrones del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NEUTRONS INTO v_ELEMENT_NEUTRONS FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

    -- Obtener el nombre del elemento de la tabla ELEMENTS.
    SELECT ELEMENT_NAME INTO v_ELEMENT_NAME FROM ELEMENTS WHERE ELEMENT_SYMBOL_ID = v_ELEMENTS_ARRAY;

    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_ELEMENT_NEUTRONS || ' NEUTRONES que posee por defecto un átomo de ' || v_ELEMENT_NAME || '.');

    -- Calculo de la cantidad de neutrones de cada elemento.
    v_NEUTRONS := v_ATOMS * v_ELEMENT_NEUTRONS / v_ATOM;

    RETURN v_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION QUARKSUP_NEUTRONS(v_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de quarks up.
    v_NEUTRON NUMBER := 1; -- Variable para almacenar una unidad de neutron.

    v_PARTICLE_ID VARCHAR2(255) := 'Neutron'; -- Variable para declarar la identidad del neutron.
BEGIN
    -- Obtener la cantidad de quarks up que hay en un neutron de cada elemento. [quarksupareinneutrons = 1 ]
    SELECT DISTINCT QUARKS_UP_IN_PARTICLE INTO v_QUARKSUP_NEUTRONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_NAME_ID = v_PARTICLE_ID AND QUARKS_UP_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSUP_NEUTRONS ||' QUARKS UP en un NEUTRON de cada elemento.');

    -- quarksupneutronsa = quarksupareinneutrons * neutronsa / neutron 
    v_QUARKSUP_NEUTRONS := v_QUARKSUP_NEUTRONS * v_NEUTRONS / v_NEUTRON;

    RETURN v_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION QUARKSDOWN_NEUTRONS(v_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de quarks down.
    v_NEUTRON NUMBER := 1; -- Variable para almacenar una unidad de neutron.

    v_PARTICLE_ID VARCHAR2(255) := 'Neutron'; -- Variable para declarar la identidad del neutron.
BEGIN
    -- Obtener la cantidad de quarks down que hay en un neutron de cada elemento. [quarksdownareinneutrons = 2 ]
    SELECT DISTINCT QUARKS_DOWN_IN_PARTICLE INTO v_QUARKSDOWN_NEUTRONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_NAME_ID = v_PARTICLE_ID AND QUARKS_DOWN_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSDOWN_NEUTRONS ||' QUARKS DOWN en un NEUTRON de cada elemento.');
    
    -- quarksdownneutronsa = quarksdownareinneutrons * neutronsa / neutron
    v_QUARKSDOWN_NEUTRONS := v_QUARKSDOWN_NEUTRONS * v_NEUTRONS / v_NEUTRON;

    RETURN v_QUARKSDOWN_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION MeV_C2_QUARKSUP_NEUTRONS(v_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks up.

    v_QUARKUP_ID VARCHAR2(255) := 'Up'; -- Variable para declarar la identidad del quark up.
BEGIN
    -- Obtener la energia de los quarks up.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSUP_NEUTRONS FROM SUBPARTICLES WHERE SUBPARTICLE_NAME_ID = v_QUARKUP_ID;
    
    -- MeV_C2_QUARKSUP_NEUTRONS = quarksup_neutrons * 2.2
    v_MeV_C2_QUARKSUP_NEUTRONS := v_QUARKSUP_NEUTRONS * v_MeV_C2_QUARKSUP_NEUTRONS;

    RETURN v_MeV_C2_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION eV_C2_QUARKSUP_NEUTRONS(v_MeV_C2_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV / c^2 / 1 MeV
    v_eV_C2_QUARKSUP_NEUTRONS := v_MeV_C2_QUARKSUP_NEUTRONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION J_C2_QUARKSUP_NEUTRONS(v_eV_C2_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J/c^2 / 1 eV
    v_J_C2_QUARKSUP_NEUTRONS := v_eV_C2_QUARKSUP_NEUTRONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_C2_QUARKSUP_NEUTRONS(v_J_C2_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN

    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg/c^2 / 1 J
    v_Kg_C2_QUARKSUP_NEUTRONS := v_J_C2_QUARKSUP_NEUTRONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_QUARKSUP_NEUTRONS(v_Kg_C2_QUARKSUP_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSUP_NEUTRONS := v_Kg_C2_QUARKSUP_NEUTRONS / v_SPEED_OF_LIGHT_IN_A_VACUUM * v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSUP_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION MeV_C2_QUARKSDOWN_NEUTRONS(v_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_MeV_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia de los quarks down.

    v_QUARKDOWN_ID VARCHAR2(255) := 'Down'; -- Variable para declarar la identidad del quark down.
BEGIN
    -- Obtener la energia de los quarks down.
    SELECT SUBPARTICLE_MASS_MeVC2 INTO v_MeV_C2_QUARKSDOWN_NEUTRONS FROM SUBPARTICLES WHERE SUBPARTICLE_NAME_ID = v_QUARKDOWN_ID;

    -- MeV_C2_quarksDown_NEUTRONS = quarksDown_neutrons * 4.7
    v_MeV_C2_QUARKSDOWN_NEUTRONS := v_QUARKSDOWN_NEUTRONS * v_MeV_C2_QUARKSDOWN_NEUTRONS;

    RETURN v_MeV_C2_QUARKSDOWN_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION eV_C2_QUARKSDOWN_NEUTRONS(v_MeV_C2_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_eV_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en eV/C^2 de los quarks up.

    v_eV_in_MeV NUMBER := 1000000; -- Variable para almacenar la cantidad de energia en eV que hay en un MeV.
    
    v_MeV NUMBER := 1; -- Variable para declarar la identidad una unidad de MeV.
BEGIN
    -- eV/C^2 = MeV/C2 * 1000000 eV/c^2 / 1 MeV
    v_eV_C2_QUARKSDOWN_NEUTRONS := v_MeV_C2_QUARKSDOWN_NEUTRONS * v_eV_in_MeV / v_MeV;

    RETURN v_eV_C2_QUARKSDOWN_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION J_C2_QUARKSDOWN_NEUTRONS(v_eV_C2_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_J_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en J/C^2 de los quarks up.

    v_J_in_eV NUMBER := 0.000000000000000000160217733; -- Variable para almacenar la cantidad de energia en J que hay en un eV.
    
    v_eV NUMBER := 1; -- Variable para declarar la identidad una unidad de un eV.
BEGIN
    -- J/C^2 = eV/C^2 * 0.000000000000000000160217733 J/c^2 / 1 eV
    v_J_C2_QUARKSDOWN_NEUTRONS := v_eV_C2_QUARKSDOWN_NEUTRONS * v_J_in_eV / v_eV;

    RETURN v_J_C2_QUARKSDOWN_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_C2_QUARKSDOWN_NEUTRONS(v_J_C2_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_Kg_C2_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks up.

    v_Kg_in_J NUMBER := 0.00000000000000001112650056; -- Variable para almacenar la cantidad de energia en Kg que hay en un J.
    
    v_J NUMBER := 1; -- Variable para declarar la identidad una unidad de un J.
BEGIN
    -- Kg/C^2 = J/C^2 * 0.00000000000000001112650056 Kg/c^2 / 1 J
    v_Kg_C2_QUARKSDOWN_NEUTRONS := v_J_C2_QUARKSDOWN_NEUTRONS * v_Kg_in_J / v_J;

    RETURN v_Kg_C2_QUARKSDOWN_NEUTRONS; 
END;
/

CREATE OR REPLACE FUNCTION Kg_QUARKSDOWN_NEUTRONS(v_Kg_C2_QUARKSDOWN_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_Kg_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de energia en Kg/C^2 de los quarks DOWN.

    v_SPEED_OF_LIGHT_IN_A_VACUUM NUMBER := 299792458; -- Variable para almacenar la velocidad de la luz en el vacío.
BEGIN
    -- Kg = Kg/C^2 / 299792458^2
    v_Kg_QUARKSDOWN_NEUTRONS := v_Kg_C2_QUARKSDOWN_NEUTRONS / v_SPEED_OF_LIGHT_IN_A_VACUUM * v_SPEED_OF_LIGHT_IN_A_VACUUM;

    RETURN v_Kg_QUARKSDOWN_NEUTRONS; 
END;
/


