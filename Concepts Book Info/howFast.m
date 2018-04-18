function ret = howFast(theta)
    
    theta = theta * (pi / 180);
    x = 5280 / 4 / 3.28;
    ret = sqrt((9.8*x) / (2 * cos(theta) * sin(theta)));