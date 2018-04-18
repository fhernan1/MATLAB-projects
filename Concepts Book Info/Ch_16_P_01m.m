% Chapter 16, Problem 1
function Ch_16_P_01 

clear
clc
close all

% 16-1	In this series of exercises, you will write a script that 
%  performs some measurements that justify the need to sort a vector.    
%  Background:
% •	Since this need is only apparent when processing large amounts of  
%  data, we will use a vector of at least 100,000 elements.
% •	MATLAB has two built-in functions that collectively provide  
%  stop-watch capability: tic and toc.  The function tic starts  
%  the stop-watch, and toc returns the number of seconds since the  
%  last tic.  
% •	However, since the time difference is measured to the resolution  
%  of milliseconds, we will have to repeat the experiments a number  
%  of times to achieve accurate measurements.
% •	Since this involves a for loop that itself will cost time, we  
%  must also measure the overhead of the for loop and subtract that  
%  from the computational cost of the operation we are timing.
% a.	Begin your script by deciding on the vector size, N, and the  
%  number of repetitions, reps, and making a vector, vec, of random  
%  integers between 0 and N.
    N = 10000;
    reps = 10;
    vec = rand(N);
% b.	Write an empty function, junk, that consumes a vector of  
%  size N and a number and returns a number. 
% c.	Use tic and toc to compute the time for a for loop that does  
%  nothing but pass vec and round(N*rand(1,1)) to junk.  Adjust the 
%   value of reps until this loop takes about a second to run.   
%  Store this cost in the variable overhead.
    time = 0;
    while (time < 1)
        tic
        for k = 1:reps
            junk(vec,round(N*rand));
        end
        overhead = toc;
        reps = reps + 1;
    end
% d.	Write a function, linearSearch, that consumes a vector and  
%  a number and performs a linear search on the vector looking for  
%  that number. It should return either the position of that number  
%  in the vector or an empty vector if the number is not present.
% e.	Add a loop to your script like the loop in part c. except  
%  calling linearSearch.  Subtract overhead from the computed time  
%  and save it as linearSearchTime.
    time = 0;
    while (time < 1)
        tic
        for k = 1:reps
            linearSearch(vec,round(N*rand));
        end
        time = toc;
        reps = reps + 1;
    end

    time_search_l = time - overhead;
% f.	Now sort the vector vec using the MATLAB sort(…) function  
%  and store it in a new vector, sortedVec.
    sortedVec = sort(vec);
% g.	Write the function binarySearch that consumes a vector and  
%  a number and uses the algorithm in section 16.1.1 to find the  
%  position of the number in the vector returning its position or  
%  the empty vector.
% h.	Now, repeat step e calling your new binarySearch function,  
%  saving the time as binarySearchTime..
    time = 0;
    while (time < 1)
        tic
        for k = 1:reps
            binarySearch(vec,round(N*rand));
        end
        time = toc;
        reps = reps + 1;
    end

    time_search_b = time - overhead;
% i.	Plot the times of the linear and binary searches for a range  
%  of values of N.  What do you learn from these plots?
    times = [];

    for v = 1:N
        vec = (N)*rand(N);
        while (time < 1)
            tic
            for k = 1:reps
                linearSearch(vec,round(N*rand));
            end
            time = toc;
            reps = reps + 1;
        end

        time_search_l = time - overhead;

        times = [times time_search_l];
    end

    plot(1:N,times);
    hold on;

    for v = 1:N
        vec = (N)*rand(N);
        while (time < 1)
            tic
            for k = 1:reps
                binarySearch(vec,round(N*rand));
            end
            time = toc;
            reps = reps + 1;
        end

        time_search_b = time - overhead;

        times = [times time_search_b];
    end

    plot(1:N,times);
end


function ret = junk(vec, n)

end


function ret = linearSearch(vec,n)
    ind = 1;
    len = length(vec) + 1;
    ret = [];
    while ind < len
        if vec(ind) == n
            ret = ind;
            break;
        end
    end
end

function ret = binarySearch(vec,n)
    low = 1;
    high = length(vec);

    ret = [];

    while low <= high
        mid = ceil(low + (high - low)/2);
        if vec(mid) > n
            high = mid - 1;
        elseif vec(mid) < n
            low = mid + 1;
        else
            ret = mid;
            break;
        end
    end
end


