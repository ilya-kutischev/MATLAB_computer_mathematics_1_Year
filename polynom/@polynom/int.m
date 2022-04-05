function i = int(p,const1)
% @polynom/int.m
p = polynom(p);
n = length(p.const1);
array = double(p);
for i = 1:n
    array(i) = array(i)*(1/(n-i+1)); 
end
if nargin ==2
    array(n+1) = const1;
else
    array(n+1) = 0;
end
i = polynom(array);