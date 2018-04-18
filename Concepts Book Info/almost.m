% 7.14	Georgia Tech has added a new award for students who were 
% "almost there" last semester and just missed making the Dean's List.
% a.	Write a function called almost that iterates through an array of 
% student structures that it takes in, and returns a cell array of names of
% those that have a semester GPA between 2.9 and 2.99 (inclusive). The 
% student structure has the following fields:
% Name—string (e.g., 'George P. Burdell')
% Semester_GPA—decimal number (e.g., 2.97)
% Cumulative_GPA—decimal number (e.g., 3.01)

function ca = almost(arr)
ca={};
for in = 1:length(arr)
    x = arr(in);
    if (x.Semester_GPA>=2.9) & (x.Semester_GPA<=2.99)
        ca=[ca,{x.Name}];
    end
end