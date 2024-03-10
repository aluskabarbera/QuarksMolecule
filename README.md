# QuarksMolecule procedure

# Description
The **'QUARKS_MOLECULE'** procedure is a PL/SQL implementation that calculates various physical and chemical properties of a given molecule. It uses chemical element data stored in a table called **'ELEMENTS'**.

# Parameters
**'p_WEIGHT'**: Weight of the molecule.
**'p_MOLECULE'**: Chemical formula of the molecule.

# Variables
The procedure makes use of several variables to store different types of information, including the total atomic weight of the molecule, the number of moles, the number of molecules, the number of atoms of each element, the number of protons, the number of neutrons , among others.

# Auxiliary Functions and Procedures
The procedure uses several auxiliary functions to perform specific calculations, such as:

**'ELEMENT_ATOMIC_WEIGHT'**: Calculates the atomic weight of a given chemical element.
**'MOLS'**: Calculates the number of moles based on the weight of the molecule and its total atomic weight.
**'MOLECULES'**: Calculate the number of molecules based on the number of moles.
**'ATOMS'**: Calculates the number of atoms of an element based on the number of molecules and the subscript of the element in the molecule.
**'PROTONS'**: Calculates the number of protons based on the number of atoms of an element.
**'QUARKSUP_PROTONS'**: Calculates the number of UP quarks in the protons of an element.
**'MeV_C2_QUARKSUP_PROTONS'**, **'eV_C2_QUARKSUP_PROTONS'**, **'J_C2_QUARKSUP_PROTONS'**, **'Kg_C2_QUARKSUP_PROTONS'**, **'Kg_QUARKSUP_PROTONS'**: Convert the number of UP quarks in the protons of an element to different units of energy and mass.
**'QUARKSDOWN_PROTONS'**: Calculates the number of DOWN quarks in the protons of an element.
**'MeV_C2_QUARKSDOWN_PROTONS'**, **'eV_C2_QUARKSDOWN_PROTONS'**, **'J_C2_QUARKSDOWN_PROTONS'**, **'Kg_C2_QUARKSDOWN_PROTONS'**, **'Kg_QUARKSDOWN_PROTONS'**: Convert the number of DOWN quarks in the protons of an element to different units of energy and mass.
**'NEUTRONS'**: Calculates the number of neutrons based on the number of atoms of an element.
**'QUARKSUP_NEUTRONS'**: Calculates the number of UP quarks in the neutrons of an element.
**'MeV_C2_QUARKSUP_NEUTRONS'**, **'eV_C2_QUARKSUP_NEUTRONS'**, **'J_C2_QUARKSUP_NEUTRONS'**, **'Kg_C2_QUARKSUP_NEUTRONS'**, **'Kg_QUARKSUP_NEUTRONS'**: Convert the number of UP quarks in the neutrons of an element to different energy and mass units.
**'QUARKSDOWN_NEUTRONS'**: Calculates the number of DOWN quarks in the neutrons of an element.
**'MeV_C2_QUARKSDOWN_NEUTRONS'**, **'eV_C2_QUARKSDOWN_NEUTRONS'**, **'J_C2_QUARKSDOWN_NEUTRONS'**, **'Kg_C2_QUARKSDOWN_NEUTRONS'**, **'Kg_QUARKSDOWN_NEUTRONS'**: Convert the number of DOWN quarks in the neutrons of an element to different units of energy and mass.

# Procedure Logic
The procedure follows the following main steps:

1. Verify that the chemical formula of the molecule begins with an alphabetic character.
2. Divide the chemical formula into elements and subscripts.
3. Calculate the total atomic weight of the molecule by adding the atomic weights of each element.
4. Calculate the number of moles and molecules based on the weight of the molecule and its total atomic weight.
5. For each element in the molecule:
   __·__ Calculate the number of atoms.
   __·__ Calculate the number of protons and UP/DOWN quarks in the protons.
   __·__ Calculate the number of neutrons and UP/DOWN quarks in the neutrons.

# Exit
The procedure prints to standard output (**'DBMS_OUTPUT.PUT_LINE'**) detailed information about the calculations performed, including the number of moles, molecules, atoms, protons, neutrons, and their respective conversions to different units of energy and mass.

# Observations
It is important to note that the procedure assumes that there is a table called **'ELEMENTS'** that contains information about the chemical elements, including their names, symbols, and other properties such as the number of protons and neutrons. Furthermore, the auxiliary functions and procedures used must be previously defined in the database.

# Developer
This procedure has been developed by [Alexei Barberà Roca] and is available for use and collaboration in [Link to GitHub Repository].
