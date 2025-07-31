%Dinh luat II Newton cho ten lua: m*dv/dt= -v0*dm/dt - m*g
%Qua trinh khai bao
    syms t 
     g=9.81; %m/s^2
  disp('Goc toa do tai mat dat');
  disp('Dinh luat II Newton cua ten lua la:');
  disp('m*dv/dt= -v0*dm/dt - m*g');
%Qua trinh nhap du lieu
   k= input('Nhap toc do dot nhien lieu: dm/dt= ');
   m= input('Nhap khoi luong ban dau cua ten lua: m= ');
   y0= input('Nhap vi tri dau tien cua ten lua: y0= ');
   v0= input('Nhap van toc dau cua ten lua: v0= ');
%Qua trinh tinh toan
    v= v0*log(m/(m-k*t)) - g*t;
    t1=m/k;
    a =diff(v,1);
    y = y0 + int(v);
%Qua trinh xuat du lieu
  disp('Gia toc cua ten lua la: a= ');
   pretty(a)
  disp('Phuong trinh chuyen dong ten lua la: y= ');
   pretty(y)
  disp('Thoi diem ten lua het nhien lieu: t=');
   fprintf('%.2f\n', t1)
  disp('=> Tai thoi diem nay ten lua da ra ngoai vu tru va khong con chuyen dong');
%Qua trinh ve do thi
  ezplot(t,y);
   title('DO THI PHUONG TRINH CHUYEN CHUYEN DONG TEN LUA');
    axis equal;
    xlabel('THOI GIAN');
    ylabel('TOA DO Y THEO THOI GIAN');
   grid on
