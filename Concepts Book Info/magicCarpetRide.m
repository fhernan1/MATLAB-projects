function answer = magicCarpetRide(x,y,z)
if x && z
    if (x || ~y)
        answer = 'Last night I held Aladdins lamp';
    elseif ~y
        answer = 'Let the sound take you away';
    else
        answer = 'Any place it goes is right';
    end
elseif y||z
    if z
        answer = 'You dont know';
    else
        answer = 'Right between the sound machine';
    end
else
    answer = 'Why dont you tell your dreams to me?';
end 
