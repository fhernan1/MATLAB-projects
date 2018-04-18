function [ans] = match(str,ch)

// Output variables initialisation (not found in input variables)
ans=[];

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

ch = "";
str = mtlb_lower(str);

// ! L.5: At least one operand is an empty matrix for operator: mtlb_double(str)==asciimat(ch), result set to [].

if [] then
  b = str;
  disp(sum(ans))
end;

match = mtlb_sum(mtlb_double(b))
endfunction
