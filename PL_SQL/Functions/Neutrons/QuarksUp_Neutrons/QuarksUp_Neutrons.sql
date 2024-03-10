CREATE OR REPLACE FUNCTION QUARKSUP_NEUTRONS(v_NEUTRONS IN NUMBER) RETURN NUMBER IS
    v_QUARKSUP_NEUTRONS NUMBER; -- Variable para almacenar la cantidad de quarks up.
    v_NEUTRON NUMBER := 1; -- Variable para almacenar una unidad de neutron.

    v_PARTICLE_ID NUMBER := 2; -- Variable para declarar la identidad del neutron.
BEGIN
    -- Obtener la cantidad de quarks up que hay en un neutron de cada elemento. [quarksupareinneutrons = 1 ]
    SELECT DISTINCT QUARKS_UP_IN_PARTICLE INTO v_QUARKSUP_NEUTRONS FROM SUBPARTICLES_PARTICLES WHERE PARTICLE_ID = v_PARTICLE_ID AND QUARKS_UP_IN_PARTICLE IS NOT NULL;
    DBMS_OUTPUT.PUT_LINE('Hay una cantidad de: ' || v_QUARKSUP_NEUTRONS ||' QUARKS UP en un NEUTRON de cada elemento.');

    -- quarksupneutronsa = quarksupareinneutrons * neutronsa / neutron 
    v_QUARKSUP_NEUTRONS := v_QUARKSUP_NEUTRONS * v_NEUTRONS / v_NEUTRON;

    RETURN v_QUARKSUP_NEUTRONS; 
END;
/
