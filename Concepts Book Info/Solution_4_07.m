% 4.7	Rewrite the following MATLAB script using only one if/else statement. 
% Hint: use the Boolean operators & and |
clear
clc

b = 40
a = 50
	if (b > 30)
		if (a > b)
			ans = 1;
		end
	elseif (b < 30)
		if (b > a)
			ans = 1;
		end
	else
		ans = 0;
	end
% Solution 4-7
ans

if (b > 30 & a > b) | (b < 30 & b > a)
    ans = 1
else
    ans = 0
end
