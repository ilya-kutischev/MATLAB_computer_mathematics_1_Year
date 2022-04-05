%6.1
t=0:.01:2*pi;
r=sin(2*t).*cos(2*t);
polar(t,r,'k')
%b
t=-pi/2:.01:pi/2;
r=2*cos(t);
polar(t,r,'k')

%6.3

d= rand(4,3);
bar(d) %с перекрывающимися столбцами
bar(d,'stacked') % c накоплением
%в
area(d)  %c областями
grid on
colormap summer
set(gca,'Layer','top');
title 'Stacked Area Plot'

%6.10 3-х мерный параметрический график
t = -2*pi:.01:2*pi; %a
x = sin(2*t);
y = cos(3*t);
plot3(x,y,t);
grid on
%b
t = -5:.01:5;
x = (1+t.^2).*sin(20*t);
y = (1-t.^2).*cos(20*t);
plot3(x,y,t);
grid on

%6.11
%a конус
x=@(u, v) (0.3*u.*cos(v));
y=@(u, v) (0.3*u.*sin(v));
z=@(u, v) 0.6*u
ezmesh(x,y,z)
axis equal
%б эллипсоид
x=@(u, v) (cos(u).*cos(v));
y=@(u, v) (0.7*cos(u).*sin(v));
z=@(u, v) 0.8*sin(u)
ezmesh(x,y,z)
axis equal
%6.12
ezsurf('x','y','(4*sin(2*pi*x))*cos(1.5*pi*y)*(y-1)',...
[-1,1,0,1])
axis equal
colormap default
colorbar
shading flat

%b
ezsurf('x','y','-exp(-y^2)*cos(3*pi*x)*(1-x)*x*y',...
[-1,1,-2,2])
axis equal
colormap default
colorbar
shading flat


%6.15
% траектория а на плоскости
t = 0:0.01:10;
x=(sin(t)./(t+1));
y=(cos(t)./(t+1));
comet(x,y)
%траектория б на пространстве

x=@(t) (exp(-abs(t-50)/50)*sin(t));
y=@(t) (exp(-abs(t-50)/50)*cos(t));
z=@(t) (t)
ezplot3(x,y,z,[0,100],'animate')


%7.3
t = -2*pi:.01:2*pi; %a
x = sin(2*t);
y = cos(3*t);
grid on
set(gcf,'DefaultLineLineWidth',2.5)
plot3(x,y,t);

%b
grid on
set(gcf,'DefaultLineLineWidth',2.5)
plot(x,t);

%7.4
t = 0:pi/20:2*pi;
hline1 = plot (t, sin(t), 'k');
hline2 = line (t+.06,sin(t),'LineWidth',4,'Color', [.8 .8 .8]);
set (gca, 'Children', [hline1 hline2])
%самостоятельно

