CREATE TABLE AMINOACIDS_NITROGENOUSBASES (
    AMINOACID_NITROGENOUSBASE_ID NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL,
    CODON VARCHAR2(3) NOT NULL,
    FIRST_NITROGENOUSBASE_SYMBOL VARCHAR2(1) NOT NULL,
    SECOND_NITROGENOUSBASE_SYMBOL VARCHAR2(1) NOT NULL,
    THIRD_NITROGENOUSBASE_SYMBOL VARCHAR2(1) NOT NULL
);

ALTER TABLE AMINOACIDS_NITROGENOUSBASES ADD CONSTRAINT aminoacid_NITROGENOUSbase_id_pk PRIMARY KEY (AMINOACID_NITROGENOUSBASE_ID);

ALTER TABLE AMINOACIDS_NITROGENOUSBASES ADD CONSTRAINT codon_NITROGENOUSbase_id_fk FOREIGN KEY (CODON) REFERENCES AMINOACIDS(CODON) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENOUSBASES ADD CONSTRAINT first_aminoacid_NITROGENOUSbase_id_pk FOREIGN KEY (FIRST_NITROGENOUSBASE_SYMBOL) REFERENCES NITROGENOUS_BASES(NITROGENOUSBASE_SYMBOL) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENOUSBASES ADD CONSTRAINT second_aminoacid_NITROGENOUSbase_id_pk FOREIGN KEY (SECOND_NITROGENOUSBASE_SYMBOL) REFERENCES NITROGENOUS_BASES(NITROGENOUSBASE_SYMBOL) ON DELETE CASCADE;
ALTER TABLE AMINOACIDS_NITROGENOUSBASES ADD CONSTRAINT third_aminoacid_NITROGENOUSbase_id_pk FOREIGN KEY (THIRD_NITROGENOUSBASE_SYMBOL) REFERENCES NITROGENOUS_BASES(NITROGENOUSBASE_SYMBOL) ON DELETE CASCADE;

COMMENT ON TABLE AMINOACIDS_NITROGENOUSBASES IS 'The nitrogenous bases corresponding to its codon.';

INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AUA', 'A', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AUC', 'A', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AUU', 'A', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AUG', 'A', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('ACA', 'A', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('ACC', 'A', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('ACG', 'A', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('ACU', 'A', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AAC', 'A', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AAU', 'A', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AAA', 'A', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AAG', 'A', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AGC', 'A', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AGU', 'A', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AGA', 'A', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('AGG', 'A', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CUA', 'C', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CUC', 'C', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CUG', 'C', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CUU', 'C', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CCA', 'C', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CCC', 'C', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CCG', 'C', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CCU', 'C', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CAC', 'C', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CAU', 'C', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CAA', 'C', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CAG', 'C', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CGA', 'C', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CGC', 'C', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CGG', 'C', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('CGU', 'G', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GUA', 'G', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GUC', 'G', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GUG', 'G', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GUU', 'G', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GCA', 'G', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GCC', 'G', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GCG', 'G', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GCU', 'G', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GAC', 'G', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GAU', 'G', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GAA', 'G', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GAG', 'G', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GGA', 'G', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GGC', 'G', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GGG', 'G', 'G', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('GGU', 'G', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UCA', 'U', 'C', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UCC', 'U', 'C', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UCG', 'U', 'C', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UCU', 'U', 'C', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UUC', 'U', 'U', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UUU', 'U', 'U', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UUA', 'U', 'U', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UUG', 'U', 'U', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UAC', 'U', 'A', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UAU', 'U', 'A', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UAA', 'U', 'A', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UAG', 'U', 'A', 'G');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UGC', 'U', 'G', 'C');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UGU', 'U', 'G', 'U');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UGA', 'U', 'G', 'A');
INSERT INTO AMINOACIDS_NITROGENOUSBASES (CODON, FIRST_NITROGENOUSBASE_SYMBOL, SECOND_NITROGENOUSBASE_SYMBOL, THIRD_NITROGENOUSBASE_SYMBOL) VALUES ('UGG', 'U', 'G', 'G');
