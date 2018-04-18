% Chapter 9, Problem 3
function Ch_09_P_03 

clear
clc
% 9-3	Consider the problem of structures with nested fields.
% a.	Write a function called tracker that takes in a structure and
% returns the number of levels at which it has a field called 'Inner'. Each
% of these fields can also be structures having a field called 'Inner', but
% at each level there can be only one field called 'Inner'. The innermost
% structure will not contain a field called 'Inner'. You must use
% recursion. Your function header should be:
% function num = tracker(astruct)
% Hint: Use the 'isfield' function.
% b.	Create a structure with at least three levels of recurring fields
% and use it to test your tracker function.
    struc.name = 'Jack';
    struc.age = 42;
    struc.Inner.life = 'no';
    struc.Inner.spouse = 'Jill';
    struc.Inner.Inner.what = 'hill';
    struc.Inner.Inner.when = 'who knows';
    struc.Inner.Inner.Inner.did = 'went up';
    struc.Inner.Inner.Inner.with = 'Jack';
    struc.Inner.Inner.Inner.Inner.happened = 'broke';
    struc.Inner.Inner.Inner.Inner.what = 'crown';
    struc.Inner.Inner.Inner.Inner.Inner.did = 'came tumbling';
    struc.Inner.Inner.Inner.Inner.Inner.Inner.when = 'after';
    numb = tracker(struc)
end


function numb = tracker(struc)
    if isfield(struc, 'Inner')
        if isstruct(struc.Inner)
            numb = 1 + tracker(struc.Inner);
        else
            numb = 1;
        end
    else
        numb = 0;
    end
end
