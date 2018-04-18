% 7.13	A requirement for all freshmen classes is a progress “standing”
% during the middle of the term. The results are either a Satisfactory (S)
% or Unsatisfactory (U). You are the office employee in charge of issuing
% these grades and you decide to write a function called standing to help
% you. You pull the grade file and discover that the grades are organized
% as follows:
% Each student is a single element of a structure array and each student
% has two fields: name and classes that is itself a struct that contains
% the letter grade for five classes: math, science, english, history and
% cs. Grades can be A, B, C, D, F, or W.
% Your function should add two more tier one fields for each student:
% standings and status.
% •	standings should be a string of S's (if grade is A, B, or C) and U's
% (if grade is anything else) for each of the five classes in alphabetical
% order
% •	status should be either GOOD if there are more S's than U's in the
% standings field, or BAD otherwise
% Your function should take in a structure array and return the same
% structure array with the two added fields.

function ret=standing(arr)
ret=arr;
for in = 1:length(arr)
    x=arr(in).classes;
    st='';
    f = fieldnames(x);
    for c = 1:length(f)
        switch(getfield(x,f{c}))
            case {'A', 'B', 'C'}
                ret(in).standings(c) ='S';
            otherwise
                ret(in).standings(c) ='U';
        end
    end
    if sum(ret(in).standings=='S')<3
        ret(in).status = 'BAD';
    else
        ret(in).status = 'GOOD';
    end
end


