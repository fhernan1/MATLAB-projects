function sizeMe(name)
% reduce the given jpg file to 1/4 size by averaging 4 pixels

pic = double(imread(name));
image(uint8(pic));
figure
[rows cols cl] = size(pic);
nrows = ceil(rows/2);
ncols = ceil(cols/2);
newPic = uint8(zeros(nrows, ncols, 3));
for r = 1:nrows
    for c = 1:ncols
        for cl = 1:3
            or = r*2-1;
            oc = c*2-1;
            newPic(r, c, cl) = (pic(  or,   oc, cl) + ...
                               pic(or+1,   oc, cl) + ...
                               pic(  or, oc+1, cl) + ...
                               pic(or+1, oc+1, cl)) / 4;
        end
    end
end
image(newPic);
imwrite(newPic, ['SM' name])

                               