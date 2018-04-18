function ans = DNAComplement(str)
% complement the DNA string
% a <-> t  and  g <-> c  (a's become t's, g's become c's, and vice versa) 
ans(str == 'a') = 't';
ans(str == 't') = 'a';
ans(str == 'g') = 'c';
ans(str == 'c') = 'g';
