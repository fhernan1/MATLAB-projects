function ans = ack(x, y)
fprintf('call ack(%d,%d)\n', x, y);
if x == 0
    ans = y + 1;
elseif y == 0
    ans = ack(x - 1, 1);
else
    ans = ack(x - 1, ack(x, y - 1));
end
fprintf('ack(%d,%d) returns %d\n', x, y, ans);
