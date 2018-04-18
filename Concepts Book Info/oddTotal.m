function ans = oddTotal(N)
% total the odd values between 1 and N

% 1. terminating condition
if N == 1
    ans = 1;
    
    % recursive calls
elseif mod(N,2) == 0
    ans = oddTotal(N-1);
    %     ^^^2^^^^ ^3^
    %  2. call a clone of the function
    %  3. move towards teremination
else
    ans = N + oddTotal(N-2);
    %         ^^^2^^^^ ^3^
end