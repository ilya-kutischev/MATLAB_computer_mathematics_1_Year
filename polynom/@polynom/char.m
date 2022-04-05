function c = char(p);
% @polynom/char.m
p = polynom(p);
n = length(p.c);
x = sym('x');
summa = 0;
array = double(p);
for i = 1:n
    summa = summa + array(i).*x^(n-i); 
end
c = summa;