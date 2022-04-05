function plot(p)
% @polynom/plot.m

%
%  if nargin == 1
%    x=-5:0.05:5;
%end
%p = polynom(p);
%n = length(p.c);
%array = double(p);
%summa = 0;
%for i = 1:n
%    summa = summa + array(i).*x.^(n-i);
%end
%y = summa;
%figure
%plot(x,y)



%%   plot(p)    % график полинома на областиб содержащей все корни
%    plot(p,x)  % график функции на заданной облости определения

    r = max(abs(roots(p)));
    x = (-1.1:0.01:1.1)*r;
    y = polyval(p,x);
    plot(x,y);
    title(char(p))
       grid on
