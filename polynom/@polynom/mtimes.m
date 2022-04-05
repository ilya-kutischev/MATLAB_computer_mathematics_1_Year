function r = mtimes(p,q)
% @polynom/mtimes.m
p = polynom(p);
q = polynom(q);
n = length(p.c); 
m = length(q.c);
arr1 = double(p);
arr2 = double(q);
array = zeros(n+m-1,1);
for i = 1:n
    for j = 1:m
      array(i+j-1)=array(i+j-1)+arr1(i)*arr2(j);
    end
end
r = polynom(array);