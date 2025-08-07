clc
clear
syms x y
 N=20; 
k=linspace(0,1,N); 
[x,y]=meshgrid(k); 
   V= input('Nhap ham dien the V(x,y)= '); %lenh nhap ham the dien V
figure(1),
 surf(x,y,V), title(' Mat the dien dang 3 chieu' );
   xlabel('x');
   ylabel('y'); 
   zlabel('V');
[Ex,Ey]=gradient(V);
Ex=Ex*(-1);
Ey=Ey*(-1);
E=sqrt(Ex^2+Ey^2);
   u = 0.5*8.854E-12*(norm(E).^2);  %Tinh mat do nang luong dien truong u
     disp(['Mat do nang luong dien truong'])
     u 
figure(2),
  contour(E/norm(E)); title(' Phan bo the dien don gian hoa 2 chieu' );
    xlabel('x');
    ylabel('y'); 
grid on
figure(3)
  contour(x,y,V);
hold on
   quiver(x,y,x+Ex,y+Ey);  title(' Phan bo the dien ket hop mat do nang luong dien truong' );
xlabel('x');
ylabel('y'); 
grid on

