function quicksortip(from, to)
% Listing 16-4 - Quick sort in place
 %
 %  This function sorts a column array, 
 %  using the quick sort algorithm in place
 %
 if (from < to) 
   p = partition(from, to);
   quicksortip(from, p);
   quicksortip(p + 1, to);
 end

 function lower = partition(from, to)
 a = b{1}  % have to convince MATLAB b is a cell array first
 global b
 pivot = b{from}; i = from - 1; j = to + 1;
 while (i < j)
   i = i + 1;
   while slt(b{i}, pivot) 
     i = i + 1;
   end
   j = j - 1;
   while sgt(b{j}, pivot) 
     j = j - 1;
   end
   if (i < j) 
     temp = b{i}; % this section swaps
     b{i} = b{j}; % b(i) with b(j)
     b{j} = temp;
   end
 end
 lower = j;

 function ans = slt(sa, sb)
     sa = lower(sa) - 'a';
     sb = lower(sb) - 'a';
     in = 1;
     ans = false;
     while in < length(sa) && in < length(sb)
         v = sa(in) - sb(in);
         if v < 0
             ans = true;
             break;
         elseif v > 0
             break;
         end
     end
     if in < length(sb)
         ans = true;
     end
     
  function ans = sglt(sa, sb)
     sa = lower(sa) - 'a';
     sb = lower(sb) - 'a';
     in = 1;
     ans = false;
     while in < length(sa) && in < length(sb)
         v = sa(in) - sb(in);
         if v < 0
             break;
         elseif v > 0
             ans = true;
             break;
         end
     end
     if in < length(sa)
         ans = true;
     end
    
     