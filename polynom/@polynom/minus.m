function r = minus(p,q)
% @polynom/minus.m
p = polynom(p);
q = polynom(q);
k = length(q.c) - length(p.c);
r = polynom([zeros(1,k) p.c] - [zeros(1, -k) q.c]);