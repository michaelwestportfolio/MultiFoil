MultiFoil
=========

MultiFoil is a MATLAB-based tool for configuring, transforming, and exporting multi-element airfoil geometries. It supports both 2-element and 3-element setups and is designed for aerodynamic design tasks where precise uniform control over chord length, angle of attack, overlap, and slot gap is required.

All core functionality is provided through compiled `.p` files for distribution. Users interact with the tool through `MultiFoil.m` script that handles input.

Features
--------

- Supports 2-element and 3-element airfoil configurations
- Transformations include:
  - Angle of attack (per element)
  - Chord length scaling (per element)
  - Overlap (as percent of main chord)
  - Slot gap (vertical separation between elements)
- Plots airfoil configurations using MATLAB
- Optionally exports geometry as a DXF file for use in CAD software

Getting Started
---------------

1. Launch MATLAB and open `MultiFoil.m`.
2. Edit line 21 to '2' or '3', depending on the desired mode.
3. Edit the respective input section to specify:
   - Airfoil names
        - (As written on 'airfoiltools.com'. Naming convention generally is the name listed in the parentheses without '-il' appended at the end. Airfoils were scraped automatically so there may be variations in naming.)
         <img width="752" height="360" alt="image" src="https://github.com/user-attachments/assets/480d7577-8b41-4618-8331-f84dd0493233" />

   - Chord lengths (in unit system of your choice)
   - Angles of attack (in degrees, with positive defined counterclockwise)
   - Slot gap (in the same unit system as chord lengths)
   - Overlap (horizontal overlap defined as percent of main element chord)
   - Export flag (true/false)
4. Run the script. Transformed airfoils will be plotted and optionally saved to DXF.

Requirements
------------

- MATLAB R2024a or later
- Airfoil data stored in a structured `.mat` file (`airfoils.mat`)
- All .p files must be left in the original directory

License
------------

Use of MultiFoil is permitted under **CC BY-NC-SA 4.0** which can be viewed at https://creativecommons.org/licenses/by-nc-sa/4.0/

Author
------

Michael West  
B.S. Aerospace Engineering  
University of California, Irvine



