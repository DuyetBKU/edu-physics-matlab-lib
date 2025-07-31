%VE DO THI
     t=0:5/20:5;
     x=3*(t.^2) -(4/3)*(t.^3);
     y= 8*t;
 plot(x,y,'m','LineWidth',3); 
 legend('x=3*(t.^2) -(4/3)*(t.^3) ; y= 8*t');
   title('QUY DAO PHUONG TRINH CHUYEN DONG');
      axis equal;
      xlabel('x=3*(t.^2) -(4/3)*(t.^3)');
      ylabel('y= 8*t');
 grid on;
%TINH BAN KINH CONG
syms x y t
 disp('PHUONG TRINH QUY DAO');
     x=3*(t.^2) -(4/3)*(t.^3)
     y= 8*t
          vx=diff(x,t);
          vy=diff(y,t);
          ax=diff(x,t,2);
          ay=diff(y,t,2);
          v(t)=sqrt(vx^2 + vy^2);
          a(t)=sqrt(ax^2 + ay^2); 
          at=abs(diff(sqrt(vx^2 + vy^2),t));
          an=sqrt(a^2 -at^2);
 disp('Do lon gia toc a(1)= sqrt(ax^2 +ay^2)=');
 pretty(subs(a(t),t,1))
