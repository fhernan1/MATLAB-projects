% 15.1	The subject of thermodynamics makes extensive use of tables.
% Although many properties can be described by fairly simple equations,
% others are poorly understood, or the equations describing their behavior
% are very complicated. It is much easier just to tabulate the data. For
% example, consider the data for steam at 0.1 MPa (approximately 1 atm),
% given in the following table. 
%        Temperature, C		u, Internal Energy, kJ/kg 
vals = [100				2506.7
        150				2582.8
        200				2658.1
        250				2733.7
        300				2810.4
        400				2967.9
        500				3131.6]
temp = vals(:,1)'
energy = vals(:,2)'
% Use linear interpolation to determine the internal energy at 21.5° C.
spline(temp, energy, 21.5)
% Use linear interpolation to determine the temperature if the internal energy is 2600 kJ/kg.
interp1(energy, temp, 2600)
