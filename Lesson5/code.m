clc
clear
syms x y
   V= input('Nhap ham dien the V(x,y)= '); %lenh nhap ham the dien V
   e=-(diff(V,x)+diff(V,y));   %tinh E=-grad(V)
   u = 0.5*8.854E-12*(norm(e).^2);  %Tinh mat do nang luong dien truong u
     disp('Mat do nang luong dien truong u');
       pretty(u);
   [X,Y]= meshgrid(-10:1:10);
subplot(1,2,1);
    plot3(X,Y,subs(V,{x y},{X Y}));
      xlabel('x');
      ylabel('y'); 
     zlabel('V');
      title(' DO THI THE HIEN PHAN BO THE DIEN')
  grid on
   disp('Ex');
     ex= -subs(diff(V,x),{x y},{X Y});
   disp('Ey');
     ey= -subs(diff(V, y),{x y},{X Y});
subplot(1,2,2);
  quiver(X,Y,X+ex,Y+ey);
   title ('DO THI MAT DO NANG LUONG DIEN TRUONG')
    xlabel('x'); 
    ylabel('y');
 grid on;
