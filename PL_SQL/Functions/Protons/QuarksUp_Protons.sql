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
