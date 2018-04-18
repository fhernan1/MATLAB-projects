%% (Problem 4-8)
if gpa >= 0 & gpa < 0.5
    letterGrade = 'F';
elseif gpa >= 0.5 & gpa <1.5
    letterGrade = 'D';
elseif gpa >= 1.5 & gpa < 2.5
    letterGrade = 'C';
elseif gpa >= 2.5 & gpa < 3.5
    letterGrade = 'B';
elseif gpa >= 3.5 & gpa <= 4.0
    letterGrade = 'A';
else
    letterGrade = 'NA';
end
letterGrade