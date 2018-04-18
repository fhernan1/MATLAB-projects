
##The function rot(s, n) is a simple Caesar­ cipher encryption algorithm that
##replaces each English letter in places forward or backward along the alphabet
##in the strings.
function [cipher] = rot (s, n)
cipher = '';
      for i = 1:length (s)
          if isletter (s (i))
              if isUppercaseLetter (s (i)) == true
                  cipher (i) = rotateUpper (s (i), n);
              else
                  cipher (i) = rotateLower (s (i), n);
              end;
           else
             cipher (i) = s (i);
           end;
      end;
 
end

function [check] = isUppercaseLetter (ch)
    if (ch >= 'A' && ch <= 'Z')
        check = true;
    else    
        check = false;
    end;
end


function [ch1] = rotateUpper (ch, n)
 value = ch + n;
     if value >= 91
        value = mod (value, 91) + 65;
     end;
     if value <= 64
        value = value + 26;
     end;
 ch1 = char (value);
end


function [ch1] = rotateLower (ch, n)
 value = ch + n;
     if value >= 123
        value = mod (value, 123) + 97;
     end;
     if value <= 96
        value = value + 26;
     end;
 ch1 = char (value);
end