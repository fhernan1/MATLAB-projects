function ret = avgRainfall(v)
    ret = mean(v(v>=0));
    