function N = my_func(n)
if n<0
    N=n;
end
if (n>=0) && (n<2)
    N=n^2;
end
if n>=2
    N=4;
end

end
%%
%x = -3:1/100:3;
%y = my_func(x);

%y=[];
%for i = x
%    y = [y my_func(i)]
%end
 
%plot(x,y)