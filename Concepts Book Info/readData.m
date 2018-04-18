function ans = readData(name)
% 
ans = dlmread(name);
ans = ans(2:end,:);

