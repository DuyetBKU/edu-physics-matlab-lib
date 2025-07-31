%VE DO THI
     t=0:5/100:5;
     x=3*t;
     y=8*t.^3 - 4*t.^2;
 plot(x,y,'m','LineWidth',3); 
 legend('x=3*t  ; y= 8*t^3 - 4*t^2;');
   title('QUY DAO PHUONG TRINH CHUYEN DONG');
      axis equal;
      xlabel('x=3*t');
      ylabel('y= 8*t^3 - 4*t^2');
 grid on;
%TINH BAN KINH CONG
 %Qua trinh khai bao
syms x y t
 disp('PHUONG TRINH QUY DAO');
     x=3*t;
     y= 8*t^3 - 4*t^2;
     pretty(x);
     pretty(y);
 %Qua trinh tinh toan
          vx=diff(x,t);
          vy=diff(y,t);
          ax=diff(x,t,2);
          ay=diff(y,t,2);
          v(t)=sqrt(vx^2 + vy^2);
          a(t)=sqrt(ax^2 + ay^2); 
          at=abs(diff(sqrt(vx^2 + vy^2),t));
          an=sqrt(a^2 -at^2);
  %Qua trinh xuat du lieu
 disp('Ban kinh cong quy dao tai thoi diem t= 1s la: R(1)= v(1)^2/an(1)=');
 pretty(subs((v(t)^2/an),t,1));
 disp('=');
 fprintf('%.3f\n',subs((v(t)^2/an),t,1)) % don vi m
