% Listing 13.01 Exploring the sky situation
v = imread('Vienna.jpg');
image(v)
figure
row = 400;
red = v(row, :, 1);
gr = v(row, :, 2);
bl = v(row, :, 3);
plot(red, 'r');
hold on
plot(gr, 'g');
plot(bl, 'b');
