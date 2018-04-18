
function [ text ] = rott ( text, n )
text = '';
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
