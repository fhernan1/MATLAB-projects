% 7.10	We wish to create a “library” as an array of structures. 
% Each structure has the following fields:
% •	Title
% •	Author
% •	ISBN
clear
clc
% a.	Using MATLAB structures, create the first two entries for the 
% “library” structure array, using data of your choosing.
library=struct('Title', {'Engineering Computation with MATLAB',...
    'Harry Potter drives me nuts...'}, 'Author', {'David Smith', 'Anonymous'},...
    'ISBN', {0536122164, 911})

% b.	Write a script that will display the titles of all the books in a 
% library structure array. (You should be able to deal with libraries of 
% all different sizes).

%% Part b
disp('Testing the library structure, should return names of books')
library(end+1).Title = 'I was a Teenage Werewolf';
library(end+1).Title = 'Without Remorse';
library(end+1).title = 'What happened to this title?';
for in = 1:length(library)
    disp(library(in).Title)
end
