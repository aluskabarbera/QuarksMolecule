SET SERVEROUTPUT ON;

-- Ejemplos de uso:

CALL Subparticles_NitrogenatedBases('AGUCUCAUCUACUCAUCAGACAUGACA');
CALL Subparticles_NitrogenatedBases('uacuacuaguacgucagucagggacaggacacga');
CALL Subparticles_NitrogenatedBases('acugggcgagcaggcgaggca');
CALL Subparticles_NitrogenatedBases('GGCAGCAGGCAGUGCAC');
CALL Subparticles_NitrogenatedBases('UUUUCAUCUACa');
CALL Subparticles_NitrogenatedBases('ACGU');
CALL Subparticles_NitrogenatedBases('aaacgcgcgcggcgcggcauucgaucgua');
CALL Subparticles_NitrogenatedBases('AAAACCCCGUCGUCAGUACGAA');

-- Ejemplos de MAL uso.
CALL Subparticles_NitrogenatedBases('ZXCVTACTGAAT_AGATAGACAGATA');
CALL Subparticles_NitrogenatedBases('ACGTT1234AAT_AGATAGACAGATA');
CALL Subparticles_NitrogenatedBases('ACGTTACTG5ATGAGATAGACAGATA');
CALL Subparticles_NitrogenatedBases('ACGTTACTGAATGAGATAGAC??GATA');
CALL Subparticles_NitrogenatedBases('ACGTTACTGAATGAGATAGACAGATA');
CALL Subparticles_NitrogenatedBases('ACTCTACTAGCTAGCTACA');
CALL Subparticles_NitrogenatedBases('AGUTCAUGCA');
