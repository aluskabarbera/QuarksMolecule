CREATE TABLE ELEMENTS_CHEMICALFORMULAS (
    ELEMENTS_CHEMICALFORMULAS_ID NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL,
    CHEMICAL_FORMULA_ID VARCHAR2(255) NOT NULL,
    HYDROGEN_SYMBOL VARCHAR2(2),
    HELIUM_SYMBOL VARCHAR2(2),
    LITHIUM_SYMBOL VARCHAR2(2),
    BERYLLIUM_SYMBOL VARCHAR2(2),
    BORON_SYMBOL VARCHAR2(2),
    CARBON_SYMBOL VARCHAR2(2),
    NITROGEN_SYMBOL VARCHAR2(2),
    OXYGEN_SYMBOL VARCHAR2(2),
    FLUORINE_SYMBOL VARCHAR2(2),
    NEON_SYMBOL VARCHAR2(2),
    SODIUM_SYMBOL VARCHAR2(2),
    MAGNESIUM_SYMBOL VARCHAR2(2),
    ALUMINUM_SYMBOL VARCHAR2(2),
    SILICON_SYMBOL VARCHAR2(2),
    PHOSPHORUS_SYMBOL VARCHAR2(2),
    SULFUR_SYMBOL VARCHAR2(2),
    CHLORINE_SYMBOL VARCHAR2(2),
    ARGON_SYMBOL VARCHAR2(2),
    POTASSIUM_SYMBOL VARCHAR2(2),
    CALCIUM_SYMBOL VARCHAR2(2),
    SCANDIUM_SYMBOL VARCHAR2(2),
    TITANIUM_SYMBOL VARCHAR2(2),
    VANADIUM_SYMBOL VARCHAR2(2),
    CHROMIUM_SYMBOL VARCHAR2(2),
    MANGANESE_SYMBOL VARCHAR2(2),
    IRON_SYMBOL VARCHAR2(2),
    COBALT_SYMBOL VARCHAR2(2),
    NICKEL_SYMBOL VARCHAR2(2),
    COPPER_SYMBOL VARCHAR2(2),
    ZINC_SYMBOL VARCHAR2(2),
    GALLIUM_SYMBOL VARCHAR2(2),
    GERMANIUM_SYMBOL VARCHAR2(2),
    ARSENIC_SYMBOL VARCHAR2(2),
    SELENIUM_SYMBOL VARCHAR2(2),
    BROMINE_SYMBOL VARCHAR2(2),
    KRYPTON_SYMBOL VARCHAR2(2),
    RUBIDIUM_SYMBOL VARCHAR2(2),
    STRONTIUM_SYMBOL VARCHAR2(2),
    YTTRIUM_SYMBOL VARCHAR2(2),
    ZIRCONIUM_SYMBOL VARCHAR2(2),
    NIOBIUM_SYMBOL VARCHAR2(2),
    MOLYBDENUM_SYMBOL VARCHAR2(2),
    TECHNETIUM_SYMBOL VARCHAR2(2),
    RUTHENIUM_SYMBOL VARCHAR2(2),
    RHODIUM_SYMBOL VARCHAR2(2),
    PALLADIUM_SYMBOL VARCHAR2(2),
    SILVER_SYMBOL VARCHAR2(2),
    CADMIUM_SYMBOL VARCHAR2(2),
    INDIUM_SYMBOL VARCHAR2(2),
    TIN_SYMBOL VARCHAR2(2),
    ANTIMONY_SYMBOL VARCHAR2(2),
    TELLURIUM_SYMBOL VARCHAR2(2),
    IODINE_SYMBOL VARCHAR2(2),
    XENON_SYMBOL VARCHAR2(2),
    CESIUM_SYMBOL VARCHAR2(2),
    BARIUM_SYMBOL VARCHAR2(2),
    LANTHANUM_SYMBOL VARCHAR2(2),
    CERIUM_SYMBOL VARCHAR2(2),
    PRASEODYMIUM_SYMBOL VARCHAR2(2),
    NEODYMIUM_SYMBOL VARCHAR2(2),
    PROMETHIUM_SYMBOL VARCHAR2(2),
    SAMARIUM_SYMBOL VARCHAR2(2),
    EUROPIUM_SYMBOL VARCHAR2(2),
    GADOLINIUM_SYMBOL VARCHAR2(2),
    TERBIUM_SYMBOL VARCHAR2(2),
    DYSPROSIUM_SYMBOL VARCHAR2(2),
    HOLMIUM_SYMBOL VARCHAR2(2),
    ERBIUM_SYMBOL VARCHAR2(2),
    THULIUM_SYMBOL VARCHAR2(2),
    YTTERBIUM_SYMBOL VARCHAR2(2),
    LUTETIUM_SYMBOL VARCHAR2(2),
    HAFNIUM_SYMBOL VARCHAR2(2),
    TANTALUM_SYMBOL VARCHAR2(2),
    TUNGSTEN_SYMBOL VARCHAR2(2),
    RHENIUM_SYMBOL VARCHAR2(2),
    OSMIUM_SYMBOL VARCHAR2(2),
    IRIDIUM_SYMBOL VARCHAR2(2),
    PLATINUM_SYMBOL VARCHAR2(2),
    GOLD_SYMBOL VARCHAR2(2),
    MERCURY_SYMBOL VARCHAR2(2),
    THALLIUM_SYMBOL VARCHAR2(2),
    LEAD_SYMBOL VARCHAR2(2),
    BISMUTH_SYMBOL VARCHAR2(2),
    POLONIUM_SYMBOL VARCHAR2(2),
    ASTATINE_SYMBOL VARCHAR2(2),
    RADON_SYMBOL VARCHAR2(2),
    FRANCIUM_SYMBOL VARCHAR2(2),
    RADIUM_SYMBOL VARCHAR2(2),
    ACTINIUM_SYMBOL VARCHAR2(2),
    THORIUM_SYMBOL VARCHAR2(2),
    PROTACTINIUM_SYMBOL VARCHAR2(2),
    URANIUM_SYMBOL VARCHAR2(2),
    NEPTUNIUM_SYMBOL VARCHAR2(2),
    PLUTONIUM_SYMBOL VARCHAR2(2),
    AMERICIUM_SYMBOL VARCHAR2(2),
    CURIUM_SYMBOL VARCHAR2(2),
    BERKELIUM_SYMBOL VARCHAR2(2),
    CALIFORNIUM_SYMBOL VARCHAR2(2),
    EINSTEINIUM_SYMBOL VARCHAR2(2),
    FERMIUM_SYMBOL VARCHAR2(2),
    MENDELEVIUM_SYMBOL VARCHAR2(2),
    NOBELIUM_SYMBOL VARCHAR2(2),
    LAWRENCIUM_SYMBOL VARCHAR2(2),
    RUTHERFORDIUM_SYMBOL VARCHAR2(2),
    DUBNIUM_SYMBOL VARCHAR2(2),
    SEABORGIUM_SYMBOL VARCHAR2(2),
    BOHRIUM_SYMBOL VARCHAR2(2),
    HASSIUM_SYMBOL VARCHAR2(2),
    MEITNERIUM_SYMBOL VARCHAR2(2),
    DARMSTADTIUM_SYMBOL VARCHAR2(2),
    ROENTGENIUM_SYMBOL VARCHAR2(2),
    COPERNICIUM_SYMBOL VARCHAR2(2),
    NIHONIUM_SYMBOL VARCHAR2(2),
    FLEROVIUM_SYMBOL VARCHAR2(2),
    MOSCOVIUM_SYMBOL VARCHAR2(2),
    LIVERMORIUM_SYMBOL VARCHAR2(2),
    TENNESSINE_SYMBOL VARCHAR2(2),
    OGANESSON_SYMBOL VARCHAR2(2)
);

ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT elements_chemicalformulas_id_pk PRIMARY KEY (ELEMENTS_CHEMICALFORMULAS_ID);

ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT chemical_formula_fk FOREIGN KEY (CHEMICAL_FORMULA_ID) REFERENCES CHEMICAL_FORMULAS(CHEMICAL_FORMULA_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT hydrogen_symbol_fk FOREIGN KEY (HYDROGEN_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT helium_symbol_fk FOREIGN KEY (HELIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT lithium_symbol_fk FOREIGN KEY (LITHIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT beryllium_symbol_fk FOREIGN KEY (BERYLLIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT boron_symbol_fk FOREIGN KEY (BORON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT carbon_symbol_fk FOREIGN KEY (CARBON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT nitrogen_symbol_fk FOREIGN KEY (NITROGEN_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT oxygen_symbol_fk FOREIGN KEY (OXYGEN_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT fluorine_symbol_fk FOREIGN KEY (FLUORINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT neon_symbol_fk FOREIGN KEY (NEON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT sodium_symbol_fk FOREIGN KEY (SODIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT magnesium_symbol_fk FOREIGN KEY (MAGNESIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT aluminum_symbol_fk FOREIGN KEY (ALUMINUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT silicon_symbol_fk FOREIGN KEY (SILICON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT phosphorus_symbol_fk FOREIGN KEY (PHOSPHORUS_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT sulfur_symbol_fk FOREIGN KEY (SULFUR_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT chlorine_symbol_fk FOREIGN KEY (CHLORINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT argon_symbol_fk FOREIGN KEY (ARGON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT potassium_symbol_fk FOREIGN KEY (POTASSIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT calcium_symbol_fk FOREIGN KEY (CALCIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT scandium_symbol_fk FOREIGN KEY (SCANDIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT titanium_symbol_fk FOREIGN KEY (TITANIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT vanadium_symbol_fk FOREIGN KEY (VANADIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT chromium_symbol_fk FOREIGN KEY (CHROMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT manganese_symbol_fk FOREIGN KEY (MANGANESE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT iron_symbol_fk FOREIGN KEY (IRON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT cobalt_symbol_fk FOREIGN KEY (COBALT_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT nickel_symbol_fk FOREIGN KEY (NICKEL_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT copper_symbol_fk FOREIGN KEY (COPPER_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT zinc_symbol_fk FOREIGN KEY (ZINC_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT gallium_symbol_fk FOREIGN KEY (GALLIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT germanium_symbol_fk FOREIGN KEY (GERMANIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT arsenic_symbol_fk FOREIGN KEY (ARSENIC_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT selenium_symbol_fk FOREIGN KEY (SELENIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT bromine_symbol_fk FOREIGN KEY (BROMINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT krypton_symbol_fk FOREIGN KEY (KRYPTON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT rubidium_symbol_fk FOREIGN KEY (RUBIDIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT strontium_symbol_fk FOREIGN KEY (STRONTIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT yttrium_symbol_fk FOREIGN KEY (YTTRIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT zirconium_symbol_fk FOREIGN KEY (ZIRCONIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT niobium_symbol_fk FOREIGN KEY (NIOBIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT molybdenum_symbol_fk FOREIGN KEY (MOLYBDENUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT technetium_symbol_fk FOREIGN KEY (TECHNETIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT ruthenium_symbol_fk FOREIGN KEY (RUTHENIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT rhodium_symbol_fk FOREIGN KEY (RHODIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT palladium_symbol_fk FOREIGN KEY (PALLADIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT silver_symbol_fk FOREIGN KEY (SILVER_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT cadmium_symbol_fk FOREIGN KEY (CADMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT indium_symbol_fk FOREIGN KEY (INDIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT tin_symbol_fk FOREIGN KEY (TIN_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT antimony_symbol_fk FOREIGN KEY (ANTIMONY_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT tellurium_symbol_fk FOREIGN KEY (TELLURIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT iodine_symbol_fk FOREIGN KEY (IODINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT xenon_symbol_fk FOREIGN KEY (XENON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT cesium_symbol_fk FOREIGN KEY (CESIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT barium_symbol_fk FOREIGN KEY (BARIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT lanthanum_symbol_fk FOREIGN KEY (LANTHANUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT cerium_symbol_fk FOREIGN KEY (CERIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT praseodymium_symbol_fk FOREIGN KEY (PRASEODYMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT neodymium_symbol_fk FOREIGN KEY (NEODYMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT promethium_symbol_fk FOREIGN KEY (PROMETHIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT samarium_symbol_fk FOREIGN KEY (SAMARIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT europium_symbol_fk FOREIGN KEY (EUROPIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT gadolinium_symbol_fk FOREIGN KEY (GADOLINIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT terbium_symbol_fk FOREIGN KEY (TERBIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT dysprosium_symbol_fk FOREIGN KEY (DYSPROSIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT holmium_symbol_fk FOREIGN KEY (HOLMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT erbium_symbol_fk FOREIGN KEY (ERBIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT thulium_symbol_fk FOREIGN KEY (THULIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT ytterbium_symbol_fk FOREIGN KEY (YTTERBIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT lutetium_symbol_fk FOREIGN KEY (LUTETIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT hafnium_symbol_fk FOREIGN KEY (HAFNIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT tantalum_symbol_fk FOREIGN KEY (TANTALUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT tungsten_symbol_fk FOREIGN KEY (TUNGSTEN_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT rhenium_symbol_fk FOREIGN KEY (RHENIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT osmium_symbol_fk FOREIGN KEY (OSMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT iridium_symbol_fk FOREIGN KEY (IRIDIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT platinum_symbol_fk FOREIGN KEY (PLATINUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT gold_symbol_fk FOREIGN KEY (GOLD_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT mercury_symbol_fk FOREIGN KEY (MERCURY_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT thallium_symbol_fk FOREIGN KEY (THALLIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT lead_symbol_fk FOREIGN KEY (LEAD_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT bismuth_symbol_fk FOREIGN KEY (BISMUTH_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT polonium_symbol_fk FOREIGN KEY (POLONIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT astatine_symbol_fk FOREIGN KEY (ASTATINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT radon_symbol_fk FOREIGN KEY (RADON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT francium_symbol_fk FOREIGN KEY (FRANCIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT radium_symbol_fk FOREIGN KEY (RADIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT actinium_symbol_fk FOREIGN KEY (ACTINIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT thorium_symbol_fk FOREIGN KEY (THORIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT protactinium_symbol_fk FOREIGN KEY (PROTACTINIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT uranium_symbol_fk FOREIGN KEY (URANIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT neptunium_symbol_fk FOREIGN KEY (NEPTUNIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT plutonium_symbol_fk FOREIGN KEY (PLUTONIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT americium_symbol_fk FOREIGN KEY (AMERICIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT curium_symbol_fk FOREIGN KEY (CURIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT berkelium_symbol_fk FOREIGN KEY (BERKELIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT californium_symbol_fk FOREIGN KEY (CALIFORNIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT einsteinium_symbol_fk FOREIGN KEY (EINSTEINIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT fermium_symbol_fk FOREIGN KEY (FERMIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT mendelevium_symbol_fk FOREIGN KEY (MENDELEVIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT nobelium_symbol_fk FOREIGN KEY (NOBELIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT lawrencium_symbol_fk FOREIGN KEY (LAWRENCIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT rutherfordium_symbol_fk FOREIGN KEY (RUTHERFORDIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT dubnium_symbol_fk FOREIGN KEY (DUBNIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT seaborgium_symbol_fk FOREIGN KEY (SEABORGIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT bohrium_symbol_fk FOREIGN KEY (BOHRIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT hassium_symbol_fk FOREIGN KEY (HASSIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT meitnerium_symbol_fk FOREIGN KEY (MEITNERIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT darmstadtium_symbol_fk FOREIGN KEY (DARMSTADTIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT roentgenium_symbol_fk FOREIGN KEY (ROENTGENIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT copernicium_symbol_fk FOREIGN KEY (COPERNICIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT nihonium_symbol_fk FOREIGN KEY (NIHONIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT flerovium_symbol_fk FOREIGN KEY (FLEROVIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT moscovium_symbol_fk FOREIGN KEY (MOSCOVIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT livermorium_symbol_fk FOREIGN KEY (LIVERMORIUM_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT tennessine_symbol_fk FOREIGN KEY (TENNESSINE_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;
ALTER TABLE ELEMENTS_CHEMICALFORMULAS ADD CONSTRAINT oganesson_symbol_fk FOREIGN KEY (OGANESSON_SYMBOL) REFERENCES ELEMENTS(ELEMENT_SYMBOL_ID) ON DELETE CASCADE;

COMMENT ON TABLE ELEMENTS_CHEMICALFORMULAS IS 'Elements are in the chemical formula.';

-- #· Nitrogenated Bases
-- Adenina
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL) VALUES ('C5H5N5', 'C', 'H', 'N');

-- Timina
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H6N2O2', 'C', 'H', 'N', 'O');

-- Guanina
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H5N5O1', 'C', 'H', 'N', 'O');

-- Citosina
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C4H5N3O1', 'C', 'H', 'N', 'O');

-- Uracil
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C4H4N2O2', 'C', 'H', 'N', 'O');

-- #· Aminoacids
-- Isoleucine (Ile) & Leucine (Leu)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C6H13N1O2', 'C', 'H', 'N', 'O');

-- Methionine (Met)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL, SULFUR_SYMBOL) VALUES ('C5H11N1O2S1', 'C', 'H', 'N', 'O', 'S');

-- Threonine (Thr)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C4H9N1O3', 'C', 'H', 'N', 'O');

-- Asparagine (Asn)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C4H8N2O3', 'C', 'H', 'N', 'O');

-- Lysine (Lys)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C6H14N2O2', 'C', 'H', 'N', 'O');

-- Serine (Ser)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C3H7N1O3', 'C', 'H', 'N', 'O');

-- Arginine (Arg)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C6H14N4O2', 'C', 'H', 'N', 'O');

-- Proline (Pro)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H9N1O2', 'C', 'H', 'N', 'O');

-- Histidine (His)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C6H9N3O2', 'C', 'H', 'N', 'O');

-- Glutamine (Gln)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H10N2O3', 'C', 'H', 'N', 'O');

-- Valine (Val)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H11N1O2', 'C', 'H', 'N', 'O');

-- Alanine (Ala)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C3H7N1O2', 'C', 'H', 'N', 'O');

-- Aspartate (Asp)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C4H7N1O4', 'C', 'H', 'N', 'O');

-- Glutamate (Glu)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C5H9N1O4', 'C', 'H', 'N', 'O');

-- Glycine (Gly)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C2H5N1O2', 'C', 'H', 'N', 'O');

-- Cysteine (Cys)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL, SULFUR_SYMBOL) VALUES ('C3H7N1O2S1', 'C', 'H', 'N', 'O', 'S');

-- Phenylalanine (Phe)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C9H11N1O2', 'C', 'H', 'N', 'O');

-- Tyrosine (Tyr)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C9H11N1O1', 'C', 'H', 'N', 'O');

-- Tryptophan (Trp)
INSERT INTO ELEMENTS_CHEMICALFORMULAS (CHEMICAL_FORMULA_ID, CARBON_SYMBOL, HYDROGEN_SYMBOL, NITROGEN_SYMBOL, OXYGEN_SYMBOL) VALUES ('C11H12N2O2', 'C', 'H', 'N', 'O');