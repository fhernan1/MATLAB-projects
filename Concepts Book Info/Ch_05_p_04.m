% Chapter 5, Problem 4
function Ch_05_P_04 

    clear
    clc
% 5-4	Write a function called classAverage that takes in an array of 
% numbers and, after normalizing  the grades in such a way that the  
% highest corresponds to 100, returns the letter grade of the class  
% average.  This curve is the same method used to generate normTests  
% in Problem 3-2. The grade ranges are as follows:
% average>90	=> A
% 80<=average<90	=> B
% 70<=average<80	=> C
% 60<=average<70	=> D
% average<60	=> F 
% For example:
classAverage(  [70 87 95 80 80 78 85 90 66 89 ...
  89 100] ) %should return B
classAverage( [50 90 61 82 75 92 81 76 87 41 ...
  31 98] ) %should return C
classAverage( [10 10 11 32 53 12 34 74 31 30 ...
 26 22] ) %should return F
end

function average= classAverage(grades)
 
    max1= max(grades);
    grades2= (grades/max1)*100;
    classAvg= mean(grades2);

    if classAvg >= 90 && classAvg<100
        average= 'A';
    elseif classAvg >= 80 && classAvg<90
        average= 'B';
    elseif classAvg >= 70 && classAvg<80
        average= 'C';
    elseif classAvg >= 60 && classAvg<70
        average= 'D';
    elseif classAvg >= 0 && classAvg<60
        average='F';
    end
end
