CREATE TABLE SUBPARTICLES (
    SUBPARTICLE_NAME_ID VARCHAR2(255) NOT NULL,
    SUBPARTICLE_MASS_MeVC2 NUMBER,
    SUBPARTICLE_MASS_GeVC2 NUMBER,
    SUBPARTICLE_CHARGE NUMBER NOT NULL,
    SUBPARTICLE_SPIN NUMBER NOT NULL,
    SUBPARTICLE_FAMILY VARCHAR(255) NOT NULL
);

ALTER TABLE SUBPARTICLES ADD CONSTRAINT subparticle_id_pk PRIMARY KEY (SUBPARTICLE_NAME_ID);

COMMENT ON TABLE SUBPARTICLES IS 'Subparticles of Standard Model.';

-- Quarks:
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Up', 2.2, NULL, 0.6666666666666667, 0.5, 'Quark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Charm', NULL, 1.28, 0.6666666666666667, 0.5, 'Quark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Top', NULL, 173.1, 0.6666666666666667, 0.5, 'Quark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Down', 4.7, NULL, -0.3333333333333333, 0.5, 'Quark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Strange', 96, NULL, -0.3333333333333333, 0.5, 'Quark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Bottom', NULL, 4.18, -0.3333333333333333, 0.5, 'Quark');
-- Antiquarks:
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antiup', 2.2, NULL, -0.6666666666666667, 0.5, 'Antiquark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Anticharm', NULL, 1.28, -0.6666666666666667, 0.5, 'Antiquark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antitop', NULL, 173.1, -0.6666666666666667, 0.5, 'Antiquark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antidown', 4.7, NULL, 0.3333333333333333, 0.5, 'Antiquark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antistrange', 96, NULL, 0.3333333333333333, 0.5, 'Antiquark');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antibottom', NULL, 4.18, 0.3333333333333333, 0.5, 'Antiquark');
-- Leptons:
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Electron', 0.511, NULL, -1, 0.5, 'Lepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Muon', 105.66, NULL, -1, 0.5, 'Lepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Tau', NULL, 1.7768, -1, 0.5, 'Lepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Electronneutrino', 2.2, NULL, 0, 0.5, 'Lepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Muonneutrino', 1.7, NULL, 0, 0.5, 'Lepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Tauneutrino', 15.5, NULL, 0, 0.5, 'Lepton');
-- Antilepton:
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Positron', 0.511, NULL, 1, 0.5, 'Antilepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antimuon', 105.66, NULL, 1, 0.5, 'Antilepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Antitau', NULL, 1.7768, 1, 0.5, 'Antilepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Electronantineutrino', 2.2, NULL, 0, 0.5, 'Antilepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Muonantineutrino', 1.7, NULL, 0, 0.5, 'Antilepton');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Tauantineutrino', 15.5, NULL, 0, 0.5, 'Antilepton');
-- Gauge Boson:
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Gluon', 0, NULL, 0, 1, 'Gauge Boson');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Photon', 0, NULL, 0, 1, 'Gauge Boson');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('BosonZ', NULL, 91.19, 0, 1, 'Gauge Boson');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('BosonWplus', NULL, 80.39, 1, 1, 'Gauge Boson');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('BosonWless', 80.39, NULL, -1, 1, 'Gauge Boson');
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Graviton', NULL, 0, 0, 0, 'Gauge Boson');
-- Scalar Bosons
INSERT INTO SUBPARTICLES (SUBPARTICLE_NAME_ID, SUBPARTICLE_MASS_MeVC2, SUBPARTICLE_MASS_GeVC2, SUBPARTICLE_CHARGE, SUBPARTICLE_SPIN, SUBPARTICLE_FAMILY) VALUES ('Higgs', 125.09, NULL, 0, 0, 'Scalar Boson');

