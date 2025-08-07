%VE DO THI
 %phuong trinh nem theo phuong ngang co dang
 % x=v0*t;
 % y=h-(1/2)*g*(t^2);
     t=0:5/20:5;
     g=9.8; %m/s^2
     v0= 15; %m/s
     h=20;
     x=v0*t;
     y=h-(1/2)*g*(t.^2);
 plot(x,y,'-c','LineWidth',3);
   title('QUY DAO PHUONG TRINH NEM NGANG');
      axis equal;
      xlabel('x=v0*t');
      ylabel('y=h-(1/2)*g*(t^2)');
 grid on;
%TINH BAN KINH CONG
syms x y t
 disp('PHUONG TRINH QUY DAO');
    x=v0*t;
    y=h-(1/2)*g*(t.^2);
          vx=diff(x,t);
          vy=diff(y,t);
          ax=diff(x,t,2);
          ay=diff(y,t,2);
          a(t)=sqrt(ax^2 +ay^2);
          at=abs(diff(sqrt(vx^2 + vy^2),t));
          an=sqrt(a(t)^2 -at^2);
          v(1)=subs(sqrt(vx^2 + vy^2),t,1);
          v(2)=subs(sqrt(vx^2 + vy^2),t,2); 
 disp('Ti so van toc cua hon da sau khi nem 1 giay va 2 giay la: v(1)/v(2)=');
 pretty(v(1)/v(2))
 disp('Gia toc ax= (d^2)x/dt^2=');
 pretty(ax)
 disp('Gia toc ay= (d^2)y/dt^2=');
 pretty(ay)
 disp('Do lon gia toc TIEP TUYEN at(1)= |dv(t)/dt|=');
 pretty(subs(at,t,1))
 disp('Do lon gia toc PHAP TUYEN an(1)= sqrt(a^2 - at^2)=');
 pretty(subs(an,t,1))  
