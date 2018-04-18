function ansMatch = match( str, ch )
%takes in a string and a character and returns the number of times that 
%character occurs in the string

if isempty(str) || isempty(ch) 
ansMatch = 0; 
else 
ansMatch = (str(1) == ch) + match(str(2:end), ch); 
end

