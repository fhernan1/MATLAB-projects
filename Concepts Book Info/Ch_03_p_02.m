% Chapter 3, Problem 3

clear
clc

vec = [45 8 2 6 98 55 45 -48 75];
vec = vec(mod(vec,2) > 0)
vLength= length(vec)
vsum = sum(vec)
avg1 = mean(vec)
avg2 = vsum/vLength
vprod = prod(vec)
