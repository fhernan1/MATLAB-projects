% Chapter 5, Problem 2
function Ch_05_P_02 

    clear
    clc
% 5-2	Write and test the code for the function mysteryFunction  that 
% consumes a vector, V, and produces a new vector, W, of the same length  
% where each element of W is the sum of the corresponding element  
% in V and the previous element of V.  Consider the previous element  
% of V(1) to be 0.  For example,
mysteryFunction( 1:8 ) %should return 
% [1 3  5  7  9 11 13 15]
mysteryFunction([1:6].^2) % should return
% [1 5 13 25 41 61]

end

function W =  mysteryFunction(V)
 
    W=[];
    for index=1:length(V)
        if index==1
            W(index)= V(index);
        else
            W=[W (V(index)+V(index-1))];
        end
    end
end