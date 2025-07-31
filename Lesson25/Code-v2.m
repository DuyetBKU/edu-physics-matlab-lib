clc
clear
syms x y
 [x,y]= meshgrid(-10:1:10,-10:1:10);
   V= input('Nhap ham dien the V(x,y)= '); %lenh nhap ham the dien V
   [Ex,Ey]=gradient(V);
Ex=Ex*(-1);
Ey=Ey*(-1);
E=sqrt(Ex^2+Ey^2);
   u = 0.5*8.854E-12*(norm(E).^2);  %Tinh mat do nang luong dien truong u
     disp(['Mat do nang luong dien truong']);
     u 
subplot(1,2,1);
  surfc(x,y,V);
      xlabel('x');
      ylabel('y'); 
     zlabel('V');
      title('DO THI MAT DO NANG LUONG DIEN TRUONG')
  grid on
subplot(1,2,2);
  quiver(x,y,x+Ex,y+Ey);
   title ('DO THI MAT DO NANG LUONG DIEN TRUONG')
    xlabel('x'); 
    ylabel('y');
 grid on;

