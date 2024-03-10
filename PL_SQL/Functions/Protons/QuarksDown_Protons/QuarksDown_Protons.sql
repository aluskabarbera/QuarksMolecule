CREATE OR REPLACE FUNCTION QUARKSDOWN_PROTONS(v_PROTONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSDOWN_PROTONS NUMBER; -- Variable para almacenar la cantidad de quarks down.
    v_PROTON NUMBER := 1; -- Variable para almacenar una unidad de protón.

    v_PARTICLE_ID NUMBER := 1; -- Variable para declarar la identidad del protón.
BEGIN
    -- Obtener la cantidad de quarks down que hay en un proton de cada elemento. [quarksdownareinprotons = 1 ]
    SELECT DISTINCT QUARKS_DOWN_IN_PARTICLE INTO v_QUARKSDOWN_PROTONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_ID = v_PARTICLE_ID AND QUARKS_DOWN_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSDOWN_PROTONS ||' QUARKS DOWN en un PROTON de cada elemento.');
    
    -- quarksdownprotonsa = quarksdownareinprotons * protonsa / proton
    v_QUARKSDOWN_PROTONS := v_QUARKSDOWN_PROTONS * v_PROTONS / v_PROTON;
    
    RETURN v_QUARKSDOWN_PROTONS; 
END;
/