function y = expon(n,m)

if m == 0
    y = 1  
else
  
    y = n * expon(n,m-1)
end 