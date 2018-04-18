function pic = IMrotate(pic, n)
% rotate the image clockwise n*90 deg
while n < 0
    n = n + 4;
end
n = mod(n, 4);
for in = 1:n
    pic = rotate(pic);
end

function np = rotate(pic)
% rotate clockwise
[r c cl] = size(pic);
ap(:,:,1) = pic(:,:,1)';
ap(:,:,2) = pic(:,:,2)';
ap(:,:,3) = pic(:,:,3)';
np = ap(end:-1:1,:,:);
