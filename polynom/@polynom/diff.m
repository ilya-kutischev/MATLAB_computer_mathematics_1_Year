function d = diff(p)
% @polynom/diff.m
p = polynom(p);
n = length(p.c);
array = double(p);
for i = 1:(n-1)
    array(i) = array(i)*(n-i); 
end
array(n) = [];
d = polynom(array);