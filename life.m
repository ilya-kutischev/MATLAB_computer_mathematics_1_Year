M=101
X=rand(M)<0.1
spy(X)
n=[M 1:M-1]
p=[2:M 1]   
for k=1:1000
    N=X(n,:)+X(p,:)+X(:, n)+X(:, p)+X(n,n)+X(p,p)+X(p,n)+X(n,p);
    X=(N==3)|(N==2)
    drawnow
    spy(X)
end    