% 7.9	You have a structure array of friends. Each structure contains a
% Name, Age, Gender, Birthplace, and Zip code. An example of this structure
% might be as follows:
clear
clc
friends(1).Name = 'George P. Burdell';
friends(1).Age = 100;
friends(1).Gender = 'Male';
friends(1).Birthplace = 'Atlanta';
friends(1).ZipCode = 30332;
% Write a function called older that will take in an array of the above 
% structure type and an age. Your function should return a new structure 
% array containing every friend whose age is higher than the provided age.
% If none of the friends contained in the structure array meets the age 
% criteria, return the empty vector, [].
friends(2).Name = 'Sam Jones';
friends(2).Age = 23;
friends(2).Gender = 'Male';
friends(2).Birthplace = 'Paris';
friends(3).Name = 'Sally Chen';
friends(3).Age = 21;
friends(3).Gender = 'Female';
friends(3).Birthplace = 'Taiwan';
friends(4).Name = 'Annie Oakly';
friends(4).Age = 29;
friends(4).Gender = 'Female';
friends(4).Birthplace = 'Oklahome City';
older(friends, 30)
older(friends, 22)
