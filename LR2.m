%2.6
a=1/((sqrt(2)/2)*(1+1i))
b= (2+3i)/(4-i)+(2-3i)/(1+4i)
c=sin(1+(1-i)^(1/3))

%2.8
a1=(exp(1))^(1+2i)
b1=(1+2i)^(exp(1))
c1=(1+2i)^(1+2i)

%2.10
clear b;
b= [[1] [2] [3] [4]]
c= b'

%2.11
x1= (1+2i);
x2= (2-1j);
x= [x1 x2 3 4]
y= x' %транспонирование
z= x.' %комплексно сопряженное тр.
X=(x.')'

%2.13
A=[1:3; 4:6; 7:9;10:12]
A1=reshape([1:12],3,4)' 
%2 вариант через разбиение по столбцам
A(3,:)
A(:,2)=[]
A(:,[1,2])=A(:,[2,1])
A = flip(A)
a = A(2,3)
N=10;

%2.14
A1 = zeros(4, 4)
A2 = ones(4,4)
A3= eye(4,4)
A4= rand(4,4)
A5 = randn(4,4)

%2.19
A=[1, 2, 3; 4 5 6; 7, 8, 9];
b=A(3,:)
b=A(:,2)
b=A(1:3,2)
B=A(1:3,2:3)
B=A([1 3],:)
B=A([3 2 1],:)
B=A(:,[3:-1:1])
A(:)
p=[3 1 2];
n=[2,3,1];
A(p,:)
A(n,:)
A(:,p)
A(:,n)
A(p,p)
A(n,n)

%2.20
A = [1; 2; 3; 4; 5; 6];
B = A'
C = A.'
D = -A
B =A +2*D
C=A'*A
a = [1:4]
E = a'*a
f=a*a'
d = A/2
G = A^2
B = A.^2
B=A.^A
C = A.*A
b= diag(A)

%2.21
A = magic(5)
A(2,:)
A(:,4)
A(end,:)
tril(A)
triu(A)

%2.25
A=rand(5,5)
B=rand(5,5)
A>B
A==B
A~=B
A<=B
spy(A>0)
spy(A<0.1)
spy(A>=B)

%2.26

A=rand(2,3)
B=rand(3,3)
v=rand(3,1)
w=rand(2,1)
A+B
A+A
B+B
v+w
v-w

A*B
B*A
A'*B
B*A'
A*A
A'*A
A*A'
B*B

A*v
v*A
v*A'
A'*v
w*A'
v*v'
v'*v
B*v
B*w

%2.33
 A = rand(5,6)
 B = ones(3,2)
 A(2:4,3:6)
 A(3:end,5:end)=B
 
 D=[A zeros(5,5);zeros(6,6), A']
 
%2.34
 A= round((rand([5 5])*1000))
 B=A(1:3, 1:3)
 S=A(1:3, 4:5)
 D=A(4:5, 1:3)
 E=A(4:5, 4:5)

%Game Of Life

M=101;
X=rand(M)<0.1;
spy(X);
n=[M 1:M-1];
p=[2:M 1]   ;
for k=1:100
    N=X(n,:)+X(p,:)+X(:, n)+X(:, p)+X(n,n)+X(p,p)+X(p,n)+X(n,p);
    X=(N==3)|(N==2);
    drawnow
    spy(X);
end    