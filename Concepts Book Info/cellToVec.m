% Part c
function v = cellToVec(ca)
if ~iscell(ca)
error('Input is not a cell array')
end
v=[];
for i = 1:length(ca)
    elem = ca{i};
    if ischar(elem)
        v = [v length(elem)];
    else
        error('Element %d in the cell array is not a character array',i)
    end
end