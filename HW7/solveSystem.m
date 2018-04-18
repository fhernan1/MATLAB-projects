function P = solveSystem(line1, line2, xval)
    A = [line1(1:2); line2(1:2)];
    c = [line1(3); line2(3)];
    P = A\c;
    x = P(1);
    y = P(2);
    y1 = line1(3)/line1(2) - (line1(1)/line1(2))*xval;
    y2 = line2(3)/line2(2) - (line2(1)/line2(2))*xval;
    hold on
    title('Intersection of Two Lines');
    ylabel('y-axis');
    xlabel('x-axis');
        if (det(A)== 0)
            P = [];
        else if (det(A)~= 0)
            P = A\c;
            plot(xval, y1, 'b')
            plot(xval, y2, 'r')
            plot(x, y, 'd')
        end
        legend({'Line 1', 'Line 2', 'Intersection'})
end