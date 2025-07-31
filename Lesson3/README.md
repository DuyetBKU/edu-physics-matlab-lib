### 💻 Explanation of each command line

```matlab
% Qua trinh khai bao bien
syms t v g vx vy       % => syms: khai báo các biến ký hiệu để giải tích

% Qua trinh nhap du lieu tu nguoi dung
m = input('Nhap vao khoi luong vat: m= ');      % => Nhập khối lượng vật
k = input('Nhap vao he so giam toc: k= ');      % => Nhập hệ số lực cản
v0 = input('Nhap vao van toc ban dau: v0= ');   % => Nhập vận tốc ban đầu

% Qua trinh tinh toan gia toc
a = (m*g - k*v)/m;        % => Biểu thức gia tốc tổng hợp có lực cản
ax = subs(a, {v, g}, {vx, 0});       % => Thay thế v = vx, g = 0 => thành phần x
ay = subs(a, {v, g}, {vy, -9.81});   % => Thay thế v = vy, g = -9.81 => thành phần y

% Giai voi alpha = 15 do
alpha = 15*pi/180;       % => Chuyển đổi góc alpha sang radian

% Giai pt vi phan cho vx, vy theo ax, ay
vx = dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);  % => Giải phương trình vx
vy = dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);  % => Giải phương trình vy

% Giai pt x, y theo vx, vy
x = dsolve(['Dx= ', char(vx)], 'x(0)= 0');       % => Giải x(t) từ vx(t)
y = dsolve(['Dy= ', char(vy)], 'y(0)= 0');       % => Giải y(t) từ vy(t)

disp('Voi alpha =15 do');     % => In ra kết quả với góc 15 độ
disp('x='); pretty(x);        % => Hiển thị phương trình x(t)
disp('y='); pretty(y);        % => Hiển thị phương trình y(t)
ezplot(x, y)                  % => Vẽ quỹ đạo chuyển động
hold on                       % => Giữ đồ thị để vẽ thêm các góc khác

% (Lặp lại các bước trên với các góc alpha = 30, 45, 60, 75 độ)
% ...
% Cuối cùng:
title('QUY DAO CHUYEN DONG NEM XIEN TRONG TRONG TRUONG CO LUC CAN'); % => Tiêu đề đồ thị
axis equal;          % => Cân bằng trục x và y
xlabel('Tam xa');    % => Ghi nhãn trục x
ylabel('Tam cao');   % => Ghi nhãn trục y
legend(...);         % => Chú thích các đường quỹ đạo
grid on;             % => Bật lưới
```

*Mô phỏng này giúp hiểu rõ hơn về chuyển động ném xiên khi có lực cản của môi trường. Các phương trình được giải tích và vẽ bằng `ezplot` trong MATLAB.*
