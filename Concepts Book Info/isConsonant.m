function ans = isConsonant(ch)
% is ch a consonant?
ans = false;
if ch >= 'a' && ch <= 'z'
    ans = true;
    switch ch
        case {'a' 'e' 'i' 'o' 'u'}
            ans = false;
    end
end