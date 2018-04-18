% Chapter 4, Problem 4

clear
clc

% 4-4	You were just hired for a summer internship with one Atlanta's best
% software companies; however, on your first day of work you learn that for
% the next 3 months, the only you will have is to convert binary (base 2)
% numbers into decimal numbers (base 10). You decide to write a script that
% will repetitively ask the user for a binary number and return its decimal
% equivalent until an illegal number (one containing digits other than 0 or
% 1) is entered. The number entered should contain only the digits 0 and 1.
% The rightmost digit has the value 2^0 and the digit N places to the left
% of that has the value 2^N. For example:
% entering 110101 returns 53 = 2^5 + 2^4 +  2^2 + 2^0
% You must use iteration to solve this problem.  Note: The input(…)
% function prompts the user for a value and returns the numerical result
done = false;
while ~done
    binary = input('Enter a binary number: ');
    done = binary <= 0;
    if ~done
        mult = 1;
        decimal = 0;
        while binary > 0
           digit = mod(binary, 10);
           binary = floor(binary / 10);
           decimal = decimal + digit * mult;
           mult = mult * 2;
        end
        fprintf('decimal = %d\n', decimal);
    end
end
