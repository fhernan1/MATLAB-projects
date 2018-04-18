% 11.13 Write a script to use the Joukowski airfoil section to draw a 3-D
% picture of a complete wing. The wing should have a sweep angle of 30°,
% and the chord (length of the wing section) at the tip should be half of
% the root chord.

clear
clc
close all

ymax = 10;
th = linspace(0, 2*pi, 40);
y = linspace(1, ymax, 40);
r = 1.1
g = .1
taper = 0.9
sweep = 0.7
dihamp = 0.01
center = complex( sqrt(r^2-g^2) - 1, g );
[yy tth] = meshgrid( y, th);
z = r * complex( cos(tth), sin(tth) ) + center;
ww = z + 1./z;
xx = real(ww) .* (ymax - taper*yy) / ymax - sweep * yy;
alf = 0;
bet = 0;
beta = [];
alpha = [];
lim = zeros(3,2);
while true
    tw = yy * bet / (4 * ymax);
    ct = cos(tw);
    st = sin(tw);
    dihed = dihamp * sin(alf);
    zz = imag(ww) .* (ymax - taper*yy) / ymax + dihed * yy.^2;
    xxa = xx .* ct - zz .* st;
    zza = xx .* st + zz .* ct;
    surf( xxa, yy, zza, yy )
%    axis([ -7.2037 1.1440 0 10.0000 -1.8244 1.8237 ]); axis off
    axis([ -7.2037 1.1440 0 10.0000  -4      4 ]); axis off
    colormap bone
    shading interp
    lightangle( 45, 45)
    view(0, 15)
    pause( 0.03 )
    alf = alf + .05;
    if alf > 2*pi
        alf = alf - 2*pi;
    end
    bet = alf;
    if bet > pi
        bet = bet - 2*pi;
    elseif bet > pi/2
        bet = pi - bet;
    end
    if bet < -pi/2
        bet = -pi - bet;
    end
    beta = [beta bet];
    alpha = [alpha alf];
end
