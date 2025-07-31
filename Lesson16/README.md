### 💻 Explanation of each command line:
```matlab
%cho goc nem a1, tim goc nem a2 sao cho 2 vat cung tam nem xa
%2 vat duoc nem len tu mat dat
syms v0 a2=> lệnh syms dùng khai báo biến
g=9.81; %m/s^2       => đặt gia tốc trọng trường g=9.81
disp('Phuong trinh nem xien len la:'); => lệnh disp(‘chuỗi’) dùng xuất câu lệnh ra màn hình
disp('x=v0*cos(a)*t'); => xuất 'x=v0*cos(a)*t' ra màn hình 

disp('y=v0*sin(a)*t-(1/2)*g*t^2'); => xuất 'y=v0*sin(a)*t-(1/2)*g*t^2' ra màn hình

disp('Cong thuc tam xa:'); => xuất 'Cong thuc tam xa:' ra màn hình

disp('L=(v0^2)*sin(2*a)/g'); => xuất 'L=(v0^2)*sin(2*a)/g' ra màn hình 
a1=input('Nhap gia tri goc a1:'); %Don vi la do  => biến=input(‘chuỗi’) dùng để nhập giá trị đầu vào cho biến, chuỗi thông thường là tên biến
disp('Hai vat cung tam xa <=> L1=L2 <=>a2 =90 -a1='); => giải  L1 =L2  sin(2*a1)=sin(2*a2)  a2=a1(loại) hoặc a2=90 – a1(nhận)
a2=90-a1 %Don vi la do
disp('Qua trinh ve do thi'); => xuất 'Qua trinh ve do thi' ra màn hình
v0=input('Nhap van toc dau'); => lệnh dùng nhập giá trị vận tốc đầu
t1=((v0*sind(a1)/g)+sqrt(((2*(v0*sind(a1))^2)/(2*g))/g)); => công thức tính toán tổng thời gian ném vật (tự chứng minh)
ta=0:t1/1000:t1; => ta cho chạy nghiệm t từ 0 đến t1 với bước nhảy t/1000 
x=v0*ta.*cosd(a1); => sau khi có giá trị t, ta thay vào phương trình x, y ở bên và ở dưới
y=v0*ta.*sind(a1)-0.5*g*ta.^2;
	Ta sẽ có 1000 điểm có tọa độ x, y, ứng với 1000 giá trị t
plot(x,y,'r','LineWidth',3);  => hàm plot dùng để vẽ đồ thị theo x và y(đơn giản chỉ là nối 1000 điểm có tọa độ trên đồ thị lại với nhau, sẽ ra một đường parabol đặc trưng cho ném xiên lên)
	‘r’, ‘Linewidth’,3 : định dạng đường quỹ đạo bằng màu đỏ(red) và bề dày bằng 3
hold on     => lệnh hold on dùng để vẽ 1 hay nhiều đồ thị tiếp theo đó chồng lên đồ thị trước
t2=((v0*sind(a2)/g)+sqrt(((2*(v0*sind(a2))^2)/(2*g))/g));
tb=0:t2/1000:t2;
x=v0*tb.*cosd(a2); => thay các thời gian tương ứng vào tọa độ vật B, ta được một 100 điểm tọa độ vật B
y=v0*tb.*sind(a2)-0.5*g*tb.^2;
plot(x,y,'b','LineWidth',3);   => hàm plot để vẽ đồ thị (nối 1000 điểm tọa độ lại như đồ thị A) 
	‘b’,’Linewidth’,3: định dạng đường quỹ đạo bằng màu xanh(blue), độ dày bằng 3
hold off .   => kết thúc câu lệnh chồng đồ thị để chuyển sang các câu lệnh độc lập khác
 title('DO THI NEM XIEN'); => title(‘chuỗi’) câu lệnh đặt tiêu đề cho bảng đồ thị
 legend('Quy dao voi goc nem alpha 1','Quy dao voi goc nem alpha 2');    => chú thích cho các đường quỹ đạo lần lượt ứng với phương trình x, y
  xlabel('Tam xa');  => chú thích cho trục hoành
  ylabel('Tam cao'); => chú thích cho trục tung
 axis equal;     => căn chỉnh đồ thị cho ngay ngắn (cân bằng) 
grid on    => bật chức năng vẽ lưới đồ thị

