function ans = countVowels(str)
% count the vowels in str
ans = 0;
str = str(str >= 'a' & str <= 'z');
for in = 1:length(str)
    ch = str(in);
    if ~isConsonant(ch)
        ans = ans + 1;
    end
end