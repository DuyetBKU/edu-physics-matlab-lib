### 💻 Explanation of each command line:
```matlab
%VE DO THI
     t=0:5/20:5; => cho thời thời chạy từ t=0 đến t=5, lấy bước nhảy là 5/20 ( giống table nhưng thay vì x thì là t)
     x=3*t - t.^3;   => thay các giá trị t vào hàm x, thu được 20 giá trị x
     y= 4*(t.^2);    => thay các giá trị t vào hàm y, thu được 20 giá trị y 
 plot(x,y,'-c','LineWidth',3);  => lệnh plot: vẽ đồ thị theo hàm x, y. định dạng đường kẻ bằng màu cyan (‘’-c’). định dạng bề dày đường kẻ là 3 (‘LineWidth’, 3) 
 legend('x=3*t - t.^3, y= 4*(t.^2)');   => lệnh legend: chú thích cho đường đồ thị
   title('QUY DAO PHUONG TRINH CHUYEN DONG');  =>lệnh title: đặt tên cho đồ thị
      axis equal;   => lệnh căn chỉnh đồ thị cân xứng
      xlabel('3*t - t.^3'); => xlabel: lệnh dán nhãn cho trục hoành
      ylabel('4*(t.^2)');  => ylabel: lệnh dán nhãn cho trục tung
 grid on; => lệnh bật lưới đồ thị
%TINH BAN KINH CONG
syms x y t  => lệnh syms: khai báo biến 
 disp('PHUONG TRINH QUY DAO');  => lệnh disp: xuất chuỗi cần in ra màn hình
    x=3*t - t.^3; => hàm x theo đề đã cho
    y=4*(t.^2); => hàm y theo đề đã cho
          ax=diff(x,t,2);  => lệnh diff: lệnh đạo hàm (gia tốc ax bằng đạo hàm cấp 2 hàm x theo biến t)
          ay=diff(y,t,2);  => lệnh diff: lệnh đạo hàm (gia tốc ay bằng đạo hàm cấp 2 hàm y theo biến t)
          a(t)=sqrt(ax^2 + ay^2); => lệnh sqrt: tính căn bậc, gia tốc a(t) =căn bật tổng hai gia tốc ax, ay bình phương 
 disp('Gia toc ax= (d^2)x/dt^2=');
 pretty(ax) => lệnh pretty: xuất hàm ax ra màn hình dưới dạng trình bày rõ ràng
 disp('Gia toc ay= (d^2)y/dt^2=');
 pretty(ay) => lệnh pretty: xuất hàm ay ra màn hình dưới dạng trình bày rõ ràng
 disp('Do lon gia toc tai thoi diem t= 1 la: a(1)= sqrt(ax^2 +ay^2)=');
 pretty(subs(a(t),t,1)) => lệnh subs: thay giá trị t=1 vào hàm a(t), và xuất kết quả ra màn hình (lệnh pretty)

