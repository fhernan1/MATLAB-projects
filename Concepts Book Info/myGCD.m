function ans = myGCD(m, n)

if n == 0
    ans = m;
else
    ans = myGCD(n, mod(m, n) );
end