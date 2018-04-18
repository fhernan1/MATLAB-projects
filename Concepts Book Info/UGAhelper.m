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

function [ret1, ret2]=UGAhelper(s1,s2)
s1.energy = -2.18*1018/(s1.Principal^2);
s2.energy = -2.18*1018/(s2.Principal^2);
flag=true;
if isequal(s1.Principal,s2.Principal)
    if isequal( [s1.Azimuthal, s1.Magnetic, double(s1.Spin)],...
            [s2.Azimuthal, s2.Magnetic, double(s2.Spin)])
        s1.Spin='up';
        s2.Spin='down';
    elseif isequal(s2.Spin, 'up')
        flag=false;
    end
elseif (s1.energy<s2.energy);
    flag=false;
end
if flag
    ret1=s1;
    ret2=s2;
else
    ret1=s2;
    ret2=s1;
end