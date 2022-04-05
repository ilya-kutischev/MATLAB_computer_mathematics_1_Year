function s = char(p)
% POLYNOM/CHAR
% CHAR(p) is the string representation of p.c
s1='';
x = double(p);
%disp(x);
i=size(x);
i=i(2);
q=i;
disp(i);
while i>0
    s1=append(s1,'+',num2str(x(i)), 'x^' , num2str(q-i));
    
    %s1=append(s1, num2str(x(i)));
    i=i-1;
end
s=s1;
end