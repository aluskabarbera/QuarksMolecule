CREATE TABLE CHEMICAL_FORMULAS (
    CHEMICAL_FORMULA_ID VARCHAR2(255) NOT NULL,
    HYDROGEN_SUBSCRIPT NUMBER,
    HELIUM_SUBSCRIPT NUMBER,
    LITHIUM_SUBSCRIPT NUMBER,
    BERYLLIUM_SUBSCRIPT NUMBER,
    BORON_SUBSCRIPT NUMBER,
    CARBON_SUBSCRIPT NUMBER,
    NITROGEN_SUBSCRIPT NUMBER,
    OXYGEN_SUBSCRIPT NUMBER,
    FLUORINE_SUBSCRIPT NUMBER,
    NEON_SUBSCRIPT NUMBER,
    SODIUM_SUBSCRIPT NUMBER,
    MAGNESIUM_SUBSCRIPT NUMBER,
    ALUMINUM_SUBSCRIPT NUMBER,
    SILICON_SUBSCRIPT NUMBER,
    PHOSPHORUS_SUBSCRIPT NUMBER,
    SULFUR_SUBSCRIPT NUMBER,
    CHLORINE_SUBSCRIPT NUMBER,
    ARGON_SUBSCRIPT NUMBER,
    POTASSIUM_SUBSCRIPT NUMBER,
    CALCIUM_SUBSCRIPT NUMBER,
    SCANDIUM_SUBSCRIPT NUMBER,
    TITANIUM_SUBSCRIPT NUMBER,
    VANADIUM_SUBSCRIPT NUMBER,
    CHROMIUM_SUBSCRIPT NUMBER,
    MANGANESE_SUBSCRIPT NUMBER,
    IRON_SUBSCRIPT NUMBER,
    COBALT_SUBSCRIPT NUMBER,
    NICKEL_SUBSCRIPT NUMBER,
    COPPER_SUBSCRIPT NUMBER,
    ZINC_SUBSCRIPT NUMBER,
    GALLIUM_SUBSCRIPT NUMBER,
    GERMANIUM_SUBSCRIPT NUMBER,
    ARSENIC_SUBSCRIPT NUMBER,
    SELENIUM_SUBSCRIPT NUMBER,
    BROMINE_SUBSCRIPT NUMBER,
    KRYPTON_SUBSCRIPT NUMBER,
    RUBIDIUM_SUBSCRIPT NUMBER,
    STRONTIUM_SUBSCRIPT NUMBER,
    YTTRIUM_SUBSCRIPT NUMBER,
    ZIRCONIUM_SUBSCRIPT NUMBER,
    NIOBIUM_SUBSCRIPT NUMBER,
    MOLYBDENUM_SUBSCRIPT NUMBER,
    TECHNETIUM_SUBSCRIPT NUMBER,
    RUTHENIUM_SUBSCRIPT NUMBER,
    RHODIUM_SUBSCRIPT NUMBER,
    PALLADIUM_SUBSCRIPT NUMBER,
    SILVER_SUBSCRIPT NUMBER,
    CADMIUM_SUBSCRIPT NUMBER,
    INDIUM_SUBSCRIPT NUMBER,
    TIN_SUBSCRIPT NUMBER,
    ANTIMONY_SUBSCRIPT NUMBER,
    TELLURIUM_SUBSCRIPT NUMBER,
    IODINE_SUBSCRIPT NUMBER,
    XENON_SUBSCRIPT NUMBER,
    CESIUM_SUBSCRIPT NUMBER,
    BARIUM_SUBSCRIPT NUMBER,
    LANTHANUM_SUBSCRIPT NUMBER,
    CERIUM_SUBSCRIPT NUMBER,
    PRASEODYMIUM_SUBSCRIPT NUMBER,
    NEODYMIUM_SUBSCRIPT NUMBER,
    PROMETHIUM_SUBSCRIPT NUMBER,
    SAMARIUM_SUBSCRIPT NUMBER,
    EUROPIUM_SUBSCRIPT NUMBER,
    GADOLINIUM_SUBSCRIPT NUMBER,
    TERBIUM_SUBSCRIPT NUMBER,
    DYSPROSIUM_SUBSCRIPT NUMBER,
    HOLMIUM_SUBSCRIPT NUMBER,
    ERBIUM_SUBSCRIPT NUMBER,
    THULIUM_SUBSCRIPT NUMBER,
    YTTERBIUM_SUBSCRIPT NUMBER,
    LUTETIUM_SUBSCRIPT NUMBER,
    HAFNIUM_SUBSCRIPT NUMBER,
    TANTALUM_SUBSCRIPT NUMBER,
    TUNGSTEN_SUBSCRIPT NUMBER,
    RHENIUM_SUBSCRIPT NUMBER,
    OSMIUM_SUBSCRIPT NUMBER,
    IRIDIUM_SUBSCRIPT NUMBER,
    PLATINUM_SUBSCRIPT NUMBER,
    GOLD_SUBSCRIPT NUMBER,
    MERCURY_SUBSCRIPT NUMBER,
    THALLIUM_SUBSCRIPT NUMBER,
    LEAD_SUBSCRIPT NUMBER,
    BISMUTH_SUBSCRIPT NUMBER,
    POLONIUM_SUBSCRIPT NUMBER,
    ASTATINE_SUBSCRIPT NUMBER,
    RADON_SUBSCRIPT NUMBER,
    FRANCIUM_SUBSCRIPT NUMBER,
    RADIUM_SUBSCRIPT NUMBER,
    ACTINIUM_SUBSCRIPT NUMBER,
    THORIUM_SUBSCRIPT NUMBER,
    PROTACTINIUM_SUBSCRIPT NUMBER,
    URANIUM_SUBSCRIPT NUMBER,
    NEPTUNIUM_SUBSCRIPT NUMBER,
    PLUTONIUM_SUBSCRIPT NUMBER,
    AMERICIUM_SUBSCRIPT NUMBER,
    CURIUM_SUBSCRIPT NUMBER,
    BERKELIUM_SUBSCRIPT NUMBER,
    CALIFORNIUM_SUBSCRIPT NUMBER,
    EINSTEINIUM_SUBSCRIPT NUMBER,
    FERMIUM_SUBSCRIPT NUMBER,
    MENDELEVIUM_SUBSCRIPT NUMBER,
    NOBELIUM_SUBSCRIPT NUMBER,
    LAWRENCIUM_SUBSCRIPT NUMBER,
    RUTHERFORDIUM_SUBSCRIPT NUMBER,
    DUBNIUM_SUBSCRIPT NUMBER,
    SEABORGIUM_SUBSCRIPT NUMBER,
    BOHRIUM_SUBSCRIPT NUMBER,
    HASSIUM_SUBSCRIPT NUMBER,
    MEITNERIUM_SUBSCRIPT NUMBER,
    DARMSTADTIUM_SUBSCRIPT NUMBER,
    ROENTGENIUM_SUBSCRIPT NUMBER,
    COPERNICIUM_SUBSCRIPT NUMBER,
    NIHONIUM_SUBSCRIPT NUMBER,
    FLEROVIUM_SUBSCRIPT NUMBER,
    MOSCOVIUM_SUBSCRIPT NUMBER,
    LIVERMORIUM_SUBSCRIPT NUMBER,
    TENNESSINE_SUBSCRIPT NUMBER,
    OGANESSON_SUBSCRIPT NUMBER
);

ALTER TABLE CHEMICAL_FORMULAS ADD CONSTRAINT chemical_formula_id_pk PRIMARY KEY (CHEMICAL_FORMULA_ID);

COMMENT ON TABLE CHEMICAL_FORMULAS IS 'Chemical formulas with the subscripts of their elements.';

-- #· Nitrogenated Bases
-- Adenina
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT) VALUES ('C5H5N5', '5', '5', '5');

-- Timina
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H6N2O2', '5', '6', '2', '2');

-- Guanina
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H5N5O1', '5', '5', '5', '1');

-- Citosina
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C4H5N3O1', '4', '5', '3', '1');

-- Uracil
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C4H4N2O2', '4', '4', '2', '2');

-- #· Aminoacids
-- Isoleucine (Ile) & Leucine (Leu)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C6H13N1O2', '6', '13', '1', '2');

-- Methionine (Met)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT, SULFUR_SUBSCRIPT) VALUES ('C5H11N1O2S1', '5', '11', '1', '2', '1');

-- Threonine (Thr)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C4H9N1O3', '4', '9', '1', '3');

-- Asparagine (Asn)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C4H8N2O3', '4', '8', '2', '3');

-- Lysine (Lys)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C6H14N2O2', '6', '14', '2', '2');

-- Serine (Ser)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C3H7N1O3', '3', '7', '1', '3');

-- Arginine (Arg)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C6H14N4O2', '6', '14', '4', '2');

-- Proline (Pro)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H9N1O2', '5', '9', '1', '2');

-- Histidine (His)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C6H9N3O2', '6', '9', '3', '2');

-- Glutamine (Gln)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H10N2O3', '5', '10', '2', '3');

-- Valine (Val)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H11N1O2', '5', '11', '1', '2');

-- Alanine (Ala)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C3H7N1O2', '3', '7', '1', '2');

-- Aspartate (Asp)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C4H7N1O4', '4', '7', '1', '4');

-- Glutamate (Glu)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C5H9N1O4', '5', '9', '1', '4');

-- Glycine (Gly)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C2H5N1O2', '2', '5', '1', '2');

-- Cysteine (Cys)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT, SULFUR_SUBSCRIPT) VALUES ('C3H7N1O2S1', '3', '7', '1', '2', '1');

-- Phenylalanine (Phe)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C9H11N1O2', '9', '11', '1', '2');

-- Tyrosine (Tyr)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C9H11N1O1', '9', '11', '1', '1');

-- Tryptophan (Trp)
INSERT INTO CHEMICAL_FORMULAS (CHEMICAL_FORMULA_ID, CARBON_SUBSCRIPT, HYDROGEN_SUBSCRIPT, NITROGEN_SUBSCRIPT, OXYGEN_SUBSCRIPT) VALUES ('C11H12N2O2', '11', '12', '2', '2');