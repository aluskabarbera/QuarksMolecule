SET SERVEROUTPUT ON;

-- Ejemplos de uso:

CALL Subparticles_ChemicalFormulas(1, 'He2O4');
CALL Subparticles_ChemicalFormulas(1, 'H2O');
CALL Subparticles_ChemicalFormulas(1, 'c77h120n18o26s');
CALL Subparticles_ChemicalFormulas(1, 'C5H5N5O1');
-- Ejemplos de MAL uso.
CALL Subparticles_ChemicalFormulas(1, '5h5N5O1');
CALL Subparticles_ChemicalFormulas(1, 'XD5N5O1');