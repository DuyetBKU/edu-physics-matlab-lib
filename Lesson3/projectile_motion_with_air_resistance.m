% Vat chuyen dong nem xien trong trong truong co luc can cua moi truong kv
% Qua trinh khai bao
   syms t v g vx vy
% Qua trinh nhap du lieu
   m= input('Nhap vao khoi luong vat: m= ');
   k= input('Nhap vao he so giam toc: k= ');
   v0= input('Nhap vao van toc ban dau: v0= '); 
% Qua trinh tinh toan
   a= (m*g - k*v)/m;
   ax= subs(a,{v g},{vx 0});% thay the v= vx, g= 0 trong bieu thuc a
   ay= subs(a,{v g},{vy -9.81});% thay the v= vy, g= -9.81 trong bieu thuc a
 %Voi alpha= 15 do
  alpha= 15*pi/180;
  % giai phuong trinh vi phan theo bien t cua vx,vy,x,y voi cac chuoi ax,ay,vx,vy
     vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
     vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
     x= dsolve(['Dx= ', char(vx)],'x(0)= 0');
     y= dsolve(['Dy= ', char(vy)],'y(0)= 0');
  disp('Voi alpha =15 do');
    disp('x='); %viet phuong trinh vat chuyen dong theo phuong Ox
     pretty(x);
    disp('y='); %viet phuong trinh vat chuyen dong theo phuong Oy
     pretty(y); 
  ezplot(x, y) % ve quy dao chuyen dong cua vat
 hold on
 %Voi alpha= 30 do
  alpha= 30*pi/180;
     vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
     vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
     x= dsolve(['Dx= ', char(vx)],'x(0)= 0');
     y= dsolve(['Dy= ', char(vy)],'y(0)= 0');
  disp('Voi alpha =30 do');
   disp('x=');
    pretty(x);
   disp('y=');
    pretty(y); 
  ezplot(x, y) 
 %Voi alpha= 45 do
  alpha= 45*pi/180;
     vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
     vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
     x= dsolve(['Dx= ', char(vx)],'x(0)= 0');
     y= dsolve(['Dy= ', char(vy)],'y(0)= 0');
  disp('Voi alpha =45 do');
   disp('x=');
    pretty(x);
   disp('y=');
    pretty(y);
  ezplot(x, y)
 %Voi alpha= 60 do
  alpha= 60*pi/180;
     vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
     vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
     x= dsolve(['Dx= ', char(vx)],'x(0)= 0');
     y= dsolve(['Dy= ', char(vy)],'y(0)= 0');
  disp('Voi alpha =60 do');
   disp('x=');
    pretty(x);
   disp('y=');
    pretty(y);  
  ezplot(x, y)
 %Voi alpha= 75 do
  alpha= 75*pi/180;
     vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
     vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
     x= dsolve(['Dx= ', char(vx)],'x(0)= 0');
     y= dsolve(['Dy= ', char(vy)],'y(0)= 0');
  disp('Voi alpha =75 do');
   disp('x=');
    pretty(x);
   disp('y=');
    pretty(y);  
  ezplot(x, y)
 hold off
  title('QUY DAO CHUYEN DONG NEM XIEN TRONG TRONG TRUONG CO LUC CAN CUA MOI TRUONG');
   axis equal; 
    xlabel('Tam xa');
    ylabel('Tam cao');
   legend('Voi alpha= 15 do','Voi alpha= 30 do','Voi alpha= 45 do','Voi alpha= 60 do','Voi alpha= 75 do');
   grid on;

