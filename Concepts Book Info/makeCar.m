function car = makeCar(yr, man, mod, st, sts, mk, m, pk, p)
% create a car structure
car.year = yr;
car.manuf = man;
car.model = mod;
car.style = st;
car.seats = sts;
car.miles = mk*1000 + m;
car.price = pk*1000 + p;
car.mileage = 10 + 20 * rand(1,1);
