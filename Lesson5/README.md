### 💻 Explanation of each command line:
```matlab
clc
clear => reset bộ nhớ
syms x y  => khai biến
V= input('Nhap ham dien the V(x,y)= '); =>lenh nhap ham the dien V
e=-(diff(V,x)+diff(V,y));   =>tinh E=-grad(V)
u = 0.5*8.854E-12*(norm(e).^2);  =>Tinh mat do nang luong dien truong u với norm là tính định thức ma trận E
disp('Mat do nang luong dien truong u'); => xuất ‘Mat do nang luong dien truong u’ ra màn hình
pretty(u); => định dạng kết quả thích hợp
[X,Y]= meshgrid(-10:1:10);  => tạo mảng ma trận x y để vẽ đồ thị 3 chiều 
subplot(1,2,1); => set bố cục đồ thị
plot3(X,Y,subs(V,{x y},{X Y})); =>vẽ đồ thị ba chiều điện thế
xlabel('x'); 
ylabel('y');    => gắn nhãn trục đồ thị
zlabel('V');
title(' DO THI DIEN THE') => tiêu đề đồ thị
grid on => định dạng lưới đồ thị
disp('Ex');  
ex= -subs(diff(V,x),{x y},{X Y}); => xuất kết quả điện trường ex
disp('Ey');
ey= -subs(diff(V, y),{x y},{X Y}); => xuất kế quả điện trường ey
subplot(1,2,2); => set bố cục đồ thị
quiver(X,Y,X+ex,Y+ey); =>vẽ đồ thị mật độ năng lượng điện trường điện trường
title ('DO THI DIEN TRUONG') => tiêu đề
xlabel('x');  => gắn tên trục
ylabel('y');
grid on; => định dạng lưới đồ thị
