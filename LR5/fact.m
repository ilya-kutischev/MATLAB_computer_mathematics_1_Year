function N = fact(n)
if n==1
    N=1;

else
    N = n * fact(n-1);
end;

end