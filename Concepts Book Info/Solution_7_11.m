% 7.11	In terms of Atomic Physics, every electron has four numbers called 
% the quantum numbers associated with it. They are principal (energy); 
% azimuthal (angular momentum); magnetic (orientation of angular momentum);
% and spin (particle spin). Wolfgang Pauli hypothesized (correctly) that no
% two electrons in an atom can have the same set of four quantum numbers; 
% that is, if the principal, azimuthal, and magnetic numbers are the same 
% for two electrons, then it is necessary for the electrons to have 
% different spin numbers.
% Scientists from UGA have come to you for assistance with some research 
% they are doing. They ask you to write a function called UGAhelper that 
% takes in two structures. Each structure represents an electron in a 
% hydrogen atom and has the following fields:
% •	Principal (this is always > 0)
% •	Azimuthal
% •	Magnetic
% •	Spin
% The first three fields are numbers and the spin field is a string with 
% either the value “up” or “down.” Your function compares the values in the
% two structures and checks if they all have the same values for the four 
% fields. If true, you are required to switch the spin of one of the 
% structures (it doesn't matter which one).
% You also have to add a field called “energy” to both structures. The 
% value stored in this field must be -2.18*1018/(n^2), where n is the value of
% the principal quantum number for that electron. You have to return both 
% structures with the energy field added to both, so that the one with the 
% higher energy is first. If the energies are equal, return the one with 
% the “up” spin first. If both have the same spin and the same energy, the 
% order does not matter.
e1.Principal = 1;
e1.Azimuthal = 3;
e1.Magnetic = 4;
e1.Spin = 'up'
e2.Principal = 1;
e2.Azimuthal = 3;
e2.Magnetic = 4;
e2.Spin = 'up'
[e3 e4] = UGAhelper(e1, e2)
[e5 e6] = UGAhelper(e3, e4)


