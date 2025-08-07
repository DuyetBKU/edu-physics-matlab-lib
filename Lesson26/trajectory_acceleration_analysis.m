%VE DO THI
     t=0:5/20:5;
     x=3*t - t.^3;
     y= 4*(t.^2);
 plot(x,y,'-c','LineWidth',3); 
 legend('x=3*t - t.^3, y= 4*(t.^2)');
   title('QUY DAO PHUONG TRINH CHUYEN DONG');
      axis equal;
      xlabel('3*t - t.^3');
      ylabel('4*(t.^2)');
 grid on;
%TINH BAN KINH CONG
syms x y t
 disp('PHUONG TRINH QUY DAO');
    x=3*t - t.^3;
    y=4*(t.^2);
          ax=diff(x,t,2);
          ay=diff(y,t,2);
          a(t)=sqrt(ax^2 + ay^2); 
 disp('Gia toc ax= (d^2)x/dt^2=');
 pretty(ax)
 disp('Gia toc ay= (d^2)y/dt^2=');
 pretty(ay)
 disp('Do lon gia toc tai thoi diem t= 1 la: a(1)= sqrt(ax^2 +ay^2)=');
 pretty(subs(a(t),t,1))
