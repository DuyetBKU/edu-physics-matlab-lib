### 💻 Explanation of each command line:
```matlab
%VE DO THI
     t=0:5/20:5; => cho t chạy từ 0 đến 5, lấy bước nhảy là 5/20
     x=3*(t.^2) -(4/3)*(t.^3); => thế giá trị t vào hàm x
     y= 8*t;  => thế giá trị vào hàm y
 plot(x,y,'m','LineWidth',3);   => lệnh plot: vẽ đồ thị theo x, y. định dạng màu đường quỹ đạo là màu hồng (m), bề dày đồ thị là 3 (Linewidth, 3)
 legend('x=3*(t.^2) -(4/3)*(t.^3) ; y= 8*t');  =>  lệnh legend: chú thích đường quỹ đạo
   title('QUY DAO PHUONG TRINH CHUYEN DONG'); => lệnh title: ghi tiêu đề đồ thị
      axis equal; => lệnh giúp cân bằng đồ thị
      xlabel('x=3*(t.^2) -(4/3)*(t.^3)'); => lệnh xlabel: dán nhãn cho trục hoành
      ylabel('y= 8*t'); => lệnh ylabel: dán nhãn cho trục tung
 grid on; => bật lưới đồ thị
%TINH BAN KINH CONG
syms x y t => syms: lệnh khai báo biến
 disp('PHUONG TRINH QUY DAO'); => lệnh disp: xuất chuỗi ra màn hình
     x=3*(t.^2) -(4/3)*(t.^3) => nhập hàm x theo đề
     y= 8*t  => nhập hàm y theo đề bài
          vx=diff(x,t); => lệnh diff: đạo hàm hàm x theo biến t
          vy=diff(y,t); => lệnh diff: đạo hàm hàm y theo biến t
          ax=diff(x,t,2); => đạo hàm cấp 2 hàm x theo t
          ay=diff(y,t,2); => đạo hàm cấp 2 hàm y theo t
          v(t)=sqrt(vx^2 + vy^2); => tính v(t), lệnh sqrt là căn bậc
          a(t)=sqrt(ax^2 + ay^2);  => tính a(t), lệnh sqrt là căn bậc
          at=abs(diff(sqrt(vx^2 + vy^2),t)); => abs là lệnh trị tuyệt đối
          an=sqrt(a^2 -at^2);
 disp('Ban kinh cong quy dao tai thoi diem t= 1s la: R(1)= v(1)^2/an(1)=');
 pretty(subs((v(t)^2/an),t,1)) => lệnh pretty: xuất kết quả ra màn hình
	Lệnh subs: thay giá trị t=1 vào hàm v(t)^2/an

