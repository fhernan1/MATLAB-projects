% Solution 4-20.b
index = 1;
while index <= length(a)
    if a(index)>0
        b(index) = true;
    else
        b(index) = false;
    end
    index = index +1;
end