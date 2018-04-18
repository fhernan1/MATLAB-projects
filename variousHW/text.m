    text = 'Baz!'
    rotatedText = rot(text, 3)
    original = rot(rotatedText, -3)
    text = 'abcdevwxyzABCDEVWXYZ'
    rotatedText = rot(text, 3)
    original = rot(rotatedText, -3)
end

function text = rot(text, n)
    for i = 1:length(text)
        if isletter(text(i))
            if isletter(char(text(i) + n))
                text(i) = text(i) + n;
            else
                if n > 0
                    text(i) = text(i) + n - 26;
                else
                    text(i) = text(i) + n + 26;
                end
            end
        end
    end
    text = char(text);
end        
