% I - VE DO THI
     t=0:5/100:5;
     x=3*(t.^2) -(4/3)*(t.^3);
     y= 8*t;
 plot(x,y,'r','LineWidth',3); 
 legend('x=3*(t.^2) -(4/3)*(t.^3) ; y= 8*t');
   title('QUY DAO PHUONG TRINH CHUYEN DONG');
      axis equal;
      xlabel('x=3*(t.^2) -(4/3)*(t.^3)');
      ylabel('y= 8*t');
 grid on;
% II - TINH BAN KINH CONG
syms x y t
 disp('PHUONG TRINH QUY DAO');
     x=3*(t.^2) -(4/3)*(t.^3);
     y= 8*t;
 disp('x=');
      pretty(x)
 disp('y=');
      pretty(y)
 disp('Van toc vx= dx/dt=');
     vx=diff(x,t);
       pretty(vx)
 disp('Van toc vy= dy/dt=');
     vy=diff(y,t);
       pretty(vy)
 disp('Gia toc ax= (d^2)x/dt^2=');
     ax=diff(x,t,2);
       pretty(ax)
 disp('Gia toc ay= (d^2)y/dt^2=');
     ay=diff(y,t,2);
       pretty(ay)
disp('Do lon van toc v(t)= sqrt(vx^2 +vy^2)=');
     v(t)=sqrt(vx^2 + vy^2);
       pretty(v(t))
 disp('=> v(1)=');
       pretty(subs(v(t),t,1))
disp('Do lon gia toc a(t)= sqrt(ax^2 +ay^2)=');
     a(t)=sqrt(ax^2 + ay^2); 
       pretty(a(t))
 disp('=> a(1)=');
       pretty(subs(a(t),t,1))
 disp('Do lon gia toc TIEP TUYEN at(t)= |dv(t)/dt|=');
     at=abs(diff(sqrt(vx^2 + vy^2),t));
       pretty (at)
 disp('=> at(1)=');
       pretty(subs(at,t,1))
 disp('Do lon gia toc PHAP TUYEN an(t)= sqrt(a^2 - at^2)=');
     an=sqrt(a^2 -at^2);
       pretty(an)
 disp('=> an(1)=');
       pretty(subs(an,t,1))
 disp('BAN KINH CONG QUY DAO TAI t= 1s la: R(1)=v(1)^2/an(1)=');
       pretty(subs((v(t)^2/an),t,1))

