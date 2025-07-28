### 💻 Explanation of each command line:
```matlab
%Phuong trinh toa do 
%r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j
 disp('DE BAI: r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j'); => disp(‘chuỗi’): lệnh xuất chuỗi ra màn hình
   syms r xo t yo i j => lệnh khai báo biến
  x0=input('x0='); %qua trinh nhap du lieu tuy y  =>biến=input(‘chuỗi’) lệnh nhập giá trị x0
  y0=input('y0=');                                   => lệnh nhập giá trị y0
  phi=input('phi='); %don vi radian  => lệnh nhập giá trị phi
 disp('Phuong trinh quy dao cua vat la:');
      x=x0*cos(5*t); => nhập hàm theo đề bài
      disp('x=');
       pretty(x) =>pretty(biến): xuất giá trị trị x
      y=y0*cos(5*t+phi); => nhập hàm theo đề bài
      disp('y='); 
       pretty(y)  => xuất giá trị y
      r = (x0*cos(5*t))*i + (y0*cos(5*t+phi))*j; => nhập hàm tính r
      disp('=> r='); %xuat ket qua r sau khi the x0, y0, phi
      pretty(r)  => xuất giá trị r
 disp('Ve do thi QUY DAO'); %qua trinh ve do thi
  t1=input('Nhap thoi gian dau tien t1=');   => lệnh nhập giá trị t1
  t2=input('Nhap thoi gian cuoi cung t2='); => lệnh nhập giá trị t2
  t=t1:(t2-t1)/100:t2;   => cho t chạy từ giá trị t1 đến t2, lấy bước nhảy 100, ta đc các phần tử t
      x=x0*cos(5*t); => thay các phần tử t vào ta tính đc các giá trị x
      y=y0*cos(5*t+phi); => thay các phần tử t vào ta tính đc các giá trị y
    plot(x,y,'r', 'LineWidth',3); =>plot: lệnh vẽ đồ thị theo x, y. định dạng đường vẽ màu đỏ (r=red), định dạng bề dày là 3( LineWidth, 3)
     title('DO THI QUY DAO THEO THOI GIAN'); =>title(‘chuỗi’): lệnh ghi tiêu đề cho đồ thị
      legend('r=x0*cos(5*t)*i +y0*cos(5*t+phi)*j'); =>legend(‘chuỗi’): lệnh ghi chú cho đường quỹ đạo
      xlabel('x=x0*cos(5*t)'); => lệnh ghi tên cho trục hoành
      ylabel('y=y0*cos(5*t+phi)'); => lệnh ghi tên cho trục tung
       axis equal; => lệnh cân bằng đồ thị
     grid on; => bật lưới đồ thị
```
