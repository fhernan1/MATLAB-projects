% Listing 19.16 - testing the find method
clear
clc
clear classes

 lst = LinkedList;
 for it = 1:20
     num = floor( 20*rand );
     addToHead( lst, num );
 end
 fprintf('list is %s\n', char(lst));
 ans = find(lst, 10);
 if isempty(ans)
     ans = -1;
 end
 fprintf('find 10 returned %d\n', ans );
