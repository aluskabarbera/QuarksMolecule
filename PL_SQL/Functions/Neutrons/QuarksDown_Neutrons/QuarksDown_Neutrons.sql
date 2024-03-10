CREATE OR REPLACE FUNCTION QUARKSDOWN_NEUTRONS(v_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSDOWN_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de quarks down.
    v_NEUTRON NUMBER := 1; -- Variable para almacenar una unidad de neutron.

    v_PARTICLE_ID NUMBER := 2; -- Variable para declarar la identidad del neutron.
BEGIN
    -- Obtener la cantidad de quarks down que hay en un neutron de cada elemento. [quarksdownareinneutrons = 2 ]
    SELECT DISTINCT QUARKS_DOWN_IN_PARTICLE INTO v_QUARKSDOWN_NEUTRONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_ID = v_PARTICLE_ID AND QUARKS_DOWN_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSDOWN_NEUTRONS ||' QUARKS DOWN en un NEUTRON de cada elemento.');
    
    -- quarksdownneutronsa = quarksdownareinneutrons * neutronsa / neutron
    v_QUARKSDOWN_NEUTRONS := v_QUARKSDOWN_NEUTRONS * v_NEUTRONS / v_NEUTRON;

    RETURN v_QUARKSDOWN_NEUTRONS; 
END;
/
