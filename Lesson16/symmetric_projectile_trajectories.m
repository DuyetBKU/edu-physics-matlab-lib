clear;
clc;
syms v0 a2
g=9.81; %m/s^2
disp('Phuong trinh nem xien len la:');
disp('x=v0*cos(a)*t');
disp('y=v0*sin(a)*t-(1/2)*g*t^2');
disp('Cong thuc tam xa:');
disp('L=(v0^2)*sin(2*a)/g');
a1=input('Nhap gia tri goc a1:'); %Don vi la do
disp('Hai vat cung tam xa <=> L1=L2 <=>a2=90-a1=');
a2=90-a1 %Don vi la do
disp('Qua trinh ve do thi');
v0=input('Nhap van toc dau v0=');
t1=((v0*sind(a1)/g)+sqrt(((2*(v0*sind(a1))^2)/(2*g))/g));
ta=0:t1/1000:t1;
x=v0*ta.*cosd(a1);
y=v0*ta.*sind(a1)-0.5*g*ta.^2;
plot(x,y,'r','LineWidth',2);
hold on
t2=((v0*sind(a2)/g)+sqrt(((2*(v0*sind(a2))^2)/(2*g))/g));
tb=0:t2/1000:t2;
x=v0*tb.*cosd(a2);
y=v0*tb.*sind(a2)-0.5*g*tb.^2;
plot(x,y,'b','LineWidth',2);
hold off
 title('DO THI NEM XIEN');
 legend('Quy dao voi goc nem alpha 1','Quy dao voi goc nem alpha 2');
  xlabel('Tam xa');
  ylabel('Tam cao');
 axis equal;
grid on
