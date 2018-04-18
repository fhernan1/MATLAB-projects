function ans = isPal(str)
% is str a palindrome?
% isPal(‘ enter your word ’)

str = lower(str);

if length(str) < 2
    ans = true;
    disp('your word is a palindrome')
elseif str(1) ~= str(end)
    ans = false;
    disp('your word is not a palindrome')
else
    ans = isPal(str(2:end-1));
end
