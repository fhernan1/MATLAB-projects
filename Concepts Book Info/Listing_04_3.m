%% Listing 4-3	the if statement with a logical vector
 A = [true true false]
 if A
	% will not execute
 end
 A(3) = true;
 if A
	% will execute
 end
