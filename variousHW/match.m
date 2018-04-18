function ansMatch = match(str, ch)
%takes in a string and a character and returns the number of times that 
%character occurs in the string


b = (str() == ch);
    

ansMatch = sum(b);

    display(ansMatch)
end