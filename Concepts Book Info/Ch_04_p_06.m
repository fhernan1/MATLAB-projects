% Chapter 4, Problem 6

clear
clc

% 4-6	A “yard” is a traditional English container.  It is 36 inches long,
% and can be approximated by a 4 inch diameter glass sphere attached to a
% conical section whose narrow end is 1 inch in diameter, and whose wide
% end is 6 inches in diameter.  Write a script to do the following:
% a.	ask the user for the height of the liquid in the yard, and
height = input('What is the height of the liquid?');
% b.	calculate the volume of liquid needed to fill the yard to that
% level.
r = 2;
rc1 = .5;
rc2 = 3;
icone = sqrt(r^2 - rc1^2) + r; %the height on the sphere end at which the
                              %cone begins, given that there has to be a
                              %one inch diameter cicle connection
hcone = 36 - icone;
hrc2 = 3*hcone/2.5; %calculate the height of the conical section at the
                    %highest point (if it were whole)
hrc1 = .5*hcone/2.5; %calculate the height of the conical section at the
                     %lowest point (if it were whole)
dist = icone - hrc1; %calculate the distance between the bottom of the
                     %cone and the bottom of the sphere (if the cone
                     %were whole
cheight = height - dist; %calculate the part of the height of the liquid
                         %that was on the cone itself (were the cone whole)
rheight = (cheight*2.5)/hcone; %calulate radius of conical section
                               %at the given height
if height < icone
    volume = (1/3)*pi*(3*r - height)*height^2;
elseif height <= 36
    volume = (1/3)*pi*(3*r - icone)*icone^2 + (1/3)*pi*(rheight^2*cheight...
        - rc1^2*(hrc1)); %add the volume in the sphere to the volume of the
                         %cone ((1/3)*pi*(big cone - little cone to get a
                         %section of the cone.
else
    volume = (1/3)*pi*(3*r - icone)*icone^2 + (1/3)*pi*(rc2^2*hrc2...
        - rc1^2*(hrc1));
end

volume