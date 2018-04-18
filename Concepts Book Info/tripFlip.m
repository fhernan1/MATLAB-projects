function str = tripFlip(str)
% flip adjacent characters
n = length(str);
for in = 1:2:n
    ch = str(in);
    str(in) = str(in+1);
    str(in+1) = ch;
end
