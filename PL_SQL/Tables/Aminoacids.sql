CREATE TABLE AMINOACIDS (
    CODON VARCHAR2(3) NOT NULL,
    AMINOACID_SYMBOL VARCHAR2(1) NOT NULL,
    AMINOACID_NAME VARCHAR2(255) NOT NULL,
    AMINOACID_ABREVIATION VARCHAR2(255) NOT NULL,
    CHEMICAL_FORMULA_ID VARCHAR2(255)
);

ALTER TABLE AMINOACIDS ADD CONSTRAINT aminoacid_id_pk PRIMARY KEY (CODON);
ALTER TABLE AMINOACIDS ADD CONSTRAINT aminoacids_chemical_formula_id_fk FOREIGN KEY (CHEMICAL_FORMULA_ID) REFERENCES CHEMICAL_FORMULAS(CHEMICAL_FORMULA_ID) ON DELETE CASCADE;

COMMENT ON TABLE AMINOACIDS IS 'Codons with their corresponding chemical formula.';

INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AUA', 'I', 'Isoleucine', 'Ile', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AUC', 'I', 'Isoleucine', 'Ile', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AUU', 'I', 'Isoleucine', 'Ile', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AUG', 'M', 'Methionine', 'Met', 'C5H11N1O2S1');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('ACA', 'T', 'Threonine', 'Thr', 'C4H9N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('ACC', 'T', 'Threonine', 'Thr', 'C4H9N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('ACG', 'T', 'Threonine', 'Thr', 'C4H9N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('ACU', 'T', 'Threonine', 'Thr', 'C4H9N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AAC', 'N', 'Asparagine', 'Asn', 'C4H8N2O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AAU', 'N', 'Asparagine', 'Asn', 'C4H8N2O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AAA', 'K', 'Lysine', 'Lys', 'C6H14N2O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AAG', 'K', 'Lysine', 'Lys', 'C6H14N2O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AGC', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AGU', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AGA', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('AGG', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CUA', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CUC', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CUG', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CUU', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CCA', 'P', 'Proline', 'Pro', 'C5H9N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CCC', 'P', 'Proline', 'Pro', 'C5H9N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CCG', 'P', 'Proline', 'Pro', 'C5H9N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CCU', 'P', 'Proline', 'Pro', 'C5H9N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CAC', 'H', 'Histidine', 'His', 'C6H9N3O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CAU', 'H', 'Histidine', 'His', 'C6H9N3O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CAA', 'Q', 'Glutamine', 'Gin', 'C5H10N2O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CAG', 'Q', 'Glutamine', 'Gin', 'C5H10N2O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CGA', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CGC', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CGG', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('CGU', 'R', 'Arginine', 'Arg', 'C6H14N4O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GUA', 'V', 'Valine', 'Val', 'C5H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GUC', 'V', 'Valine', 'Val', 'C5H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GUG', 'V', 'Valine', 'Val', 'C5H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GUU', 'V', 'Valine', 'Val', 'C5H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GCA', 'A', 'Alanine', 'Ala', 'C3H7N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GCC', 'A', 'Alanine', 'Ala', 'C3H7N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GCG', 'A', 'Alanine', 'Ala', 'C3H7N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GCU', 'A', 'Alanine', 'Ala', 'C3H7N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GAC', 'D', 'Aspartate', 'Asp', 'C4H7N1O4');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GAU', 'D', 'Aspartate', 'Asp', 'C4H7N1O4');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GAA', 'E', 'Glutamate', 'Glu', 'C5H9N1O4');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GAG', 'E', 'Glutamate', 'Glu', 'C5H9N1O4');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GGA', 'G', 'Glycine', 'Gly', 'C2H5N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GGC', 'G', 'Glycine', 'Gly', 'C2H5N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GGG', 'G', 'Glycine', 'Gly', 'C2H5N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('GGU', 'G', 'Glycine', 'Gly', 'C2H5N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UCA', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UCC', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UCG', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UCU', 'S', 'Serine', 'Ser', 'C3H7N1O3');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UUC', 'F', 'Phenylalanine', 'Phe', 'C9H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UUU', 'F', 'Phenylalanine', 'Phe', 'C9H11N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UUA', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UUG', 'L', 'Leucine', 'Leu', 'C6H13N1O2');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UAC', 'Y', 'Tyrosine', 'Tyr', 'C9H11N1O1');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UAU', 'Y', 'Tyrosine', 'Tyr', 'C9H11N1O1');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION) VALUES ('UAA', '_', 'Stop CODON', '_');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION) VALUES ('UAG', '_', 'Stop CODON', '_');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UGC', 'C', 'Cysteine', 'Cys', 'C3H7N1O2S1');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UGU', 'C', 'Cysteine', 'Cys', 'C3H7N1O2S1');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION) VALUES ('UGA', '_', 'Stop CODON', '_');
INSERT INTO AMINOACIDS (CODON, AMINOACID_SYMBOL, AMINOACID_NAME, AMINOACID_ABREVIATION, CHEMICAL_FORMULA_ID) VALUES ('UGG', 'W', 'Tryptophan', 'Trp', 'C11H12N2O2');