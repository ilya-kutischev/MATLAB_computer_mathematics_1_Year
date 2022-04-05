function y=polyval(p,x)
% @polynom/polyval.m

y = 0;
for a = p.c
    y = y.*x +a;
end
