### 💻 Explanation of each command line:
```matlab
%Phuong trinh van toc
%v=a*cos(b*t)*i+c*x*j;
syms t x y vx vy t  => Hàm syms: Khai báo biến
 
 disp('Phuong trinh van toc chat diem la');  => Hàm disp xuất chuỗi (câu văn) ra màn hình
 disp('v=a*cos(b*t)*i +c*x*j');      
%Qua trinh nhap gia tri
   a=input('Nhap gia tri a:');   => biến = input(‘chuỗi’) : nhập giá trị của biến
   b=input('Nhap gia tri b:');
   c=input('Nhap gia tri c:');
%Qua trinh tinh toan
   vx=a*cos(t.*b);  => công thức tính vx (đề cho)
   x=int(vx,t);   => int: lệnh tính nguyên hàm của hàm vx theo biến t (x = nguyên hàm vx)
   vy=c*x;    => công thức tính vy (đề cho)
   y=int(vy,t);   => nguyên hàm của hàm vy theo biến t
%Qua trinh xuat ket qua
 disp('Phuong trinh quy dao co dang:');
  disp('x=');
   pretty(x);   => lệnh pretty: xuất kết quả của x (chuyển về dạng trình bày rõ ràng)
  disp('y=');
   pretty(y);  => lệnh pretty: xuất kết quả của y (chuyển về dạng trình bày rõ ràng)
%Qua trinh ve do thi
  t1=input('Nhap thoi gian bat dau chuyen dong t1:'); =>lệnh input: nhập giá trị t1
  t2=input('Nhap thoi gian bat dau chuyen dong t2:'); =>lệnh input: nhập giá trị t2
 t=t1:(t2-t1)/1000:t2; => cho thời gian chạy từ t1 đến t2, lấy bước nhảy là  (t2-t1)/200
  x=subs(x,t);  =>  lệnh sub: thay các trị của t vào x
  y=subs(y,t);  =>  lệnh sub: thay các trị của t vào y
 plot(x,y,'r', 'LineWidth',3);  => lệnh plot: vẽ đồ thị ứng với các giá trị x, y, định dạng đường vẽ màu đỏ (‘r’ – red), độ dày là 3 ( ‘LineWidth’, 3)
 title('PHUONG TRINH QUY DAO'); => lệnh title: đặt tên cho đồ thị
  axis equal;  => lệnh căn chỉnh đồ thị ở dạng cân bằng 
  xlabel('Toa do x'); => xlabel: lệnh dán nhãn cho trục hoành
  ylabel('Toa do y'); => ylabel: lệnh dán nhãn cho trục tung
 grid on   => bật lưới đồ thị
