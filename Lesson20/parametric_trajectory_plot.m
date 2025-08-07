%Phuong trinh toa do 
%r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j
 disp('DE BAI: r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j');
   syms xo t yo
  x0=input('x0='); %qua trinh nhap du lieu tuy y
  y0=input('y0=');
  phi=input('phi='); %don vi radian
 disp('Phuong trinh quy dao cua vat la:');
      x=x0*cos(5*t);
      disp('x=');
       pretty(x)
      y=y0*cos(5*t+phi);
      disp('y=');
       pretty(y)
      r = (x0*cos(5*t))*i + (y0*cos(5*t+phi))*j;
      disp('=> r='); %xuat ket qua r sau khi the x0, y0, phi
      pretty(r)
 disp('Ve do thi QUY DAO'); %qua trinh ve do thi
  t1=input('Nhap thoi gian dau tien t1=');
  t2=input('Nhap thoi gian cuoi cung t2=');
  t=t1:(t2-t1)/100:t2;
      x=x0*cos(5*t);
      y=y0*cos(5*t+phi);
    plot(x,y,'r', 'LineWidth',3);
     title('DO THI QUY DAO THEO THOI GIAN');
      legend('r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j');
      xlabel('x=x0*cos(5*t)');
      ylabel('y=y0*cos(5*t+phi)');
       axis equal;
     grid on;
