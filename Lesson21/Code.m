%Phuong trinh van toc
%v=a*cos(b*t)*i+c*x*j;
syms t x y vx vy t 
 
 disp('Phuong trinh van toc chat diem la');
 disp('v=a*cos(b*t)*i +c*x*j');
%Qua trinh nhap gia tri
   a=input('Nhap gia tri a:');
   b=input('Nhap gia tri b:');
   c=input('Nhap gia tri c:');
%Qua trinh tinh toan
   vx=a*cos(t.*b);
   x=int(vx,t);
   vy=c*x; 
   y=int(vy,t);
%Qua trinh xuat ket qua
 disp('Phuong trinh quy dao co dang:');
  disp('x=');
   pretty(x);
  disp('y=');
   pretty(y);
%Qua trinh ve do thi
  t1=input('Nhap thoi gian bat dau chuyen dong t1:');
  t2=input('Nhap thoi gian bat dau chuyen dong t2:'); 
 t=t1:(t2-t1)/1000:t2;
  x=subs(x,t);
  y=subs(y,t);
 plot(x,y,'r', 'LineWidth',3);
 title('PHUONG TRINH QUY DAO');
  axis equal;
  xlabel('Toa do x');
  ylabel('Toa do y');
 grid on
