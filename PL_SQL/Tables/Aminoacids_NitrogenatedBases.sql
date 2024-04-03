CREATE TABLE AMINOACIDS_NITROGENATEDBASES (
    AMINOACID_NITROGENATEDBASE_ID NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL,
    CODON VARCHAR2(3) NOT NULL,
    FIRST_NITROGENATEDBASE_SYMBOL VARCHAR2(1) NOT NULL,
    SECOND_NITROGENATEDBASE_SYMBOL VARCHAR2(1) NOT NULL,
    THIRD_NITROGENATEDBASE_SYMBOL VARCHAR2(1) NOT NULL
);

ALTER TABLE AMINOACIDS_NITROGENATEDBASES ADD CONSTRAINT aminoacid_nitrogenatedbase_id_pk PRIMARY KEY (AMINOACID_NITROGENATEDBASE_ID);

ALTER TABLE AMINOACIDS_NITROGENATEDBASES ADD CONSTRAINT codon_nitrogenatedbase_id_fk FOREIGN KEY (CODON) REFERENCES AMINOACIDS(CODON) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENATEDBASES ADD CONSTRAINT first_aminoacid_nitrogenatedbase_id_pk FOREIGN KEY (FIRST_NITROGENATEDBASE_SYMBOL) REFERENCES NITROGENATED_BASES(NITROGENATEDBASE_SYMBOL) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENATEDBASES ADD CONSTRAINT second_aminoacid_nitrogenatedbase_id_pk FOREIGN KEY (SECOND_NITROGENATEDBASE_SYMBOL) REFERENCES NITROGENATED_BASES(NITROGENATEDBASE_SYMBOL) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENATEDBASES ADD CONSTRAINT third_aminoacid_nitrogenatedbase_id_pk FOREIGN KEY (THIRD_NITROGENATEDBASE_SYMBOL) REFERENCES NITROGENATED_BASES(NITROGENATEDBASE_SYMBOL) ON DELETE CASCADE;

COMMENT ON TABLE AMINOACIDS_NITROGENATEDBASES IS 'The nitrogenous bases corresponding to its codon.';

INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AUA', 'A', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AUC', 'A', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AUU', 'A', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AUG', 'A', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('ACA', 'A', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('ACC', 'A', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('ACG', 'A', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('ACU', 'A', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AAC', 'A', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AAU', 'A', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AAA', 'A', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AAG', 'A', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AGC', 'A', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AGU', 'A', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AGA', 'A', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('AGG', 'A', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CUA', 'C', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CUC', 'C', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CUG', 'C', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CUU', 'C', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CCA', 'C', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CCC', 'C', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CCG', 'C', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CCU', 'C', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CAC', 'C', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CAU', 'C', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CAA', 'C', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CAG', 'C', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CGA', 'C', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CGC', 'C', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CGG', 'C', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('CGU', 'G', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GUA', 'G', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GUC', 'G', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GUG', 'G', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GUU', 'G', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GCA', 'G', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GCC', 'G', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GCG', 'G', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GCU', 'G', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GAC', 'G', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GAU', 'G', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GAA', 'G', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GAG', 'G', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GGA', 'G', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GGC', 'G', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GGG', 'G', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('GGU', 'G', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UCA', 'U', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UCC', 'U', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UCG', 'U', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UCU', 'U', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UUC', 'U', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UUU', 'U', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UUA', 'U', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UUG', 'U', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UAC', 'U', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UAU', 'U', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UAA', 'U', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UAG', 'U', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UGC', 'U', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UGU', 'U', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UGA', 'U', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENATEDBASES (CODON, FIRST_NITROGENATEDBASE_SYMBOL, SECOND_NITROGENATEDBASE_SYMBOL, THIRD_NITROGENATEDBASE_SYMBOL) VALUES ('UGG', 'U', 'G', 'G');

