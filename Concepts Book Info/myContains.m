function n = myContains(stra, strb)
% where is the substring strb in stra?
ch = strb(1);
where = find(stra == ch);
n = 0;
lbm1 = length(strb)-1;
for in = 1:length(where)
    pos = where(in);
    nd = pos+lbm1;
    if nd <= length(stra) && strcmp(stra(pos:pos+lbm1), strb)
        n = pos;
        break;
    end
end

