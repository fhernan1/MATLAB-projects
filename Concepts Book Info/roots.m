function ret = roots(a, b, c)

    ret(1) = (-b + sqrt(b^2 - 4*a*c)) / (2*a);
    ret(2) = (-b - sqrt(b^2 - 4*a*c)) / (2*a);