%cho goc nem a1, tim goc nem a2 sao cho 2 vat cung tam nem xa
%2 vat duoc nem len tu mat dat
syms v0 a t x y L1 L2 a1 a2
g=9.81; %m/s^2
disp('Phuong trinh nem xien len la:');
disp('x=v0*cos(a)*t');
disp('y=v0*sin(a)*t-(1/2)*g*t^2');
disp('Cong thuc tam xa:');
disp('L=(v0^2)*sin(2*a)/g');
a1=input('Nhap gia tri goc a1:'); %Don vi la do
L1=(v0^2)*sind(2*a1)/g;
L2=(v0^2)*sind(2*a2)/g;
disp('Hai vat cung tam xa <=> L1=L2 <=>a2 =90 -a1=');
a2=90-a1 %Don vi la do
disp('Qua trinh ve do thi');
v0=input('Nhap van toc dau');
delta=(v0*sind(a1))^2;
t1=((-v0*sind(a1)) - sqrt(delta))/(2*(-1/2)*g);
ta=0:t1/100:t1;
x=v0*ta.*cosd(a1);
y=v0*ta.*sind(a1)-0.5*g*ta.^2;
plot(x,y,'r','LineWidth',3);
hold on
delta=(v0*sind(a2))^2;
t2=((-v0*sind(a2)) - sqrt(delta))/(2*(-1/2)*g);
tb=0:t2/100:t2;
x=v0*tb.*cosd(a2);
y=v0*tb.*sind(a2)-0.5*g*tb.^2;
plot(x,y,'b','LineWidth',3);
hold off
 title('DO THI NEM XIEN');
 legend('x=v0*t*cos(a1); y=v0*t*sin(a1)-0.5*g*t^2','x=v0*t.*cos(a2); y=v0*t*sin(a2)-0.5*g*t^2');
  xlabel('Tam xa');
  ylabel('Tam cao');
 axis equal;
grid on
