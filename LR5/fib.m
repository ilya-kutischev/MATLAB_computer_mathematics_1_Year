function N = fib(n)

if n==1 || n==2
    N=1;
else
    N=fib(n-2)+fib(n-1);
end
end
% ls=[];
% for k=1:n
%     ls(end+1)=fib(k);
% end;