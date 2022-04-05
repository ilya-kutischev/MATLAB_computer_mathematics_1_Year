%3.1
a=1;
b = 0;
while ~isinf(a)
    b=b+1;
    a=factorial(b);
end
%максимальный факториал равен 170
%3.2
while 1
    day=input('input doy of week: ', 's');
    if strcmp(day, 'exit')
        break
    end
    dnum=0;
    switch day
        case 'monday'
            dnum = 1;
        case 'tuesday'
            dnum = 2;
        case 'wednesday'
            dnum = 3;
        case 'thirthday'
            dnum = 4;
        case 'friday'
            dnum = 5;
        case 'saturday'
            dnum= 6;
        case 'sunday'
            dnum = 7;
        otherwise
            disp('uncorrect input')
            continue
    end
    disp('dnum = '+string(dnum));
end
%3.3
while 1
    mnum=input('input num of month: ');
    if mnum==0
        break
    end
    
    switch mnum
        case 1
            month = 'yanvar';
        case 2
            month = 'fevral';
        case 3
            month = 'mart';
        case 4
            month = 'april';
        case 5
            month = 'may';
        case 6
            month = 'june';
        case 7
            month = 'july';
        case 8
            month = 'august';
        case 9
            month = 'september';
        case 10
            month = 'october';
        case 11
            month = 'november';
        case 12
            month = 'december';
        otherwise
            disp('uncorrect input')
            continue
    end
    disp(month);
end
%3.4
M = input('Input (nx2)-Matrix: ')
[1 2; 4 1; 5 1]
%3.5
A= input('Input the number: A = ');
disp(['the number A is: ', int2str(A)])
S=input('input the string: S= ', 's')
disp(S)
%3.6
a= linspace(1,10,100);
[x y]=meshgrid(a);
z=sin(x).*cos(y);
surf(x, y, z);
colormap winter;
shading flat;
%3.7
X=linspace(0,2*pi);
Y=[sin(X);cos(X)];
plot(X,Y)
title('Trigonometric Function')
xlabel('Winkel \alpha')
text(pi/4,sin(pi/4),' sin\pi/4 = cos\pi/4')
axis equal
axis tight
grid on
legend(['sin\alpha'; 'cos\alpha'])
%3.8
clear x y z c h;
[x,y]=meshgrid(-2:.1:2, -1:.1:1);
z = x.*exp(-x.^2-y.^2);
[c,h]=contour(x,y,z);
clabel(c,h)
%3.9
[x,y,z]=peaks(100);
contour3(x,y,z,30);
%3.10
[X,Y]=meshgrid(-1:.05:1);
Z=X.^3-3*X.*Y.^2;
subplot(1,3,1)
surf(X,Y,Z)
axis equal
axis tight
box on

ind = abs(Z)<0.1;
Z(ind)=NaN;
subplot(1,3,2)
surf(X,Y,Z)
axis equal
axis tight
box on

subplot(1,3,3)
spy(isnan(Z))
axis equal
axis tight
axis off
%%
%11
[X,Y]=meshgrid(-5:.05:5); 
Z=1./(1+X.^2)+1./(1+Y.^2);           
zMax=max(max(Z));          
zMin=min(min(Z));
dz=0.05;

for i=zMin:dz:zMax+1
[X,Y]=meshgrid(-1:.05:1);
Z=X.^3-3*X.*Y.^2;
Z(find(abs(Z-i)<dz))=NaN;
subplot(1,2,2)
spy(isnan(Z)); 
subplot(1,2,1)
surf(X,Y,Z);
colormap winter 
shading flat;
drawnow
pause(0.05)
end
%%
A=[2 5 8 2];
B=[2 0 5 2];
c=A.*B
a=sin(A);
b=cos(B);
C=a.*b
