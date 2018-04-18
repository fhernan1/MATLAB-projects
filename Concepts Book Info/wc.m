function [chars lines words] = wc(name)
% count the characters, lines and words in the given file

fh = fopen(name, 'r');
chars = 0;
lines = 0;
words = 0;
ln = '';
while ischar(ln)
    ln = fgetl(fh);
    if ischar(ln)
        chars = chars + length(ln(ln ~= ' '));
        lines = lines + 1;
        words = words + length( find(ln == ' ') ) + 1;
    end
end
    

