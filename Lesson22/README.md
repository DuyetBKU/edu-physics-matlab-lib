### 💻 Explanation of each command line:
```matlab
%VE DO THI
t = 0:5/20:5;                       % Khởi tạo thời gian t từ 0 đến 5, chia thành 20 bước đều nhau
x = 3*(t.^2) -(4/3)*(t.^3);         % Tính hoành độ x(t) theo công thức đã cho
y = 8*t;                            % Tính tung độ y(t) theo công thức đã cho

plot(x, y, 'm', 'LineWidth', 3);    % Vẽ đồ thị quỹ đạo với màu tím ('m') và độ dày đường là 3
legend('x=3*(t.^2) -(4/3)*(t.^3) ; y= 8*t'); % Chú thích cho đường vẽ
title('QUY DAO PHUONG TRINH CHUYEN DONG');  % Tiêu đề đồ thị
axis equal;                         % Đảm bảo tỉ lệ trục x và y bằng nhau (tránh méo hình)
xlabel('x=3*(t.^2) -(4/3)*(t.^3)'); % Nhãn trục x
ylabel('y= 8*t');                   % Nhãn trục y
grid on;                            % Hiển thị lưới trên đồ thị

%TINH BAN KINH CONG
syms x y t                          % Khai báo các biến ký hiệu (symbolic): x, y, t
disp('PHUONG TRINH QUY DAO');      % Hiển thị thông báo phương trình quỹ đạo
x = 3*(t.^2) -(4/3)*(t.^3);         % Gán lại biểu thức hoành độ x(t)
y = 8*t;                            % Gán lại biểu thức tung độ y(t)

vx = diff(x, t);                   % Tính đạo hàm x'(t), tức vận tốc theo phương x
vy = diff(y, t);                   % Tính đạo hàm y'(t), tức vận tốc theo phương y
ax = diff(x, t, 2);                % Tính đạo hàm cấp 2 x''(t), tức gia tốc theo phương x
ay = diff(y, t, 2);                % Tính đạo hàm cấp 2 y''(t), tức gia tốc theo phương y

v(t) = sqrt(vx^2 + vy^2);          % Biểu thức độ lớn vận tốc tức thời: v = sqrt(vx² + vy²)
a(t) = sqrt(ax^2 + ay^2);          % Biểu thức độ lớn gia tốc tức thời: a = sqrt(ax² + ay²)

at = abs(diff(sqrt(vx^2 + vy^2), t)); % Tính gia tốc tiếp tuyến (đạo hàm của vận tốc theo thời gian)
an = sqrt(a^2 - at^2);             % Tính gia tốc pháp tuyến theo công thức: an = sqrt(a² - at²)

disp('Do lon gia toc a(1)= sqrt(ax^2 +ay^2)='); % In ra màn hình dòng mô tả kết quả
pretty(subs(a(t), t, 1))           % Tính và hiển thị giá trị độ lớn gia tốc tại thời điểm t = 1 theo dạng dễ đọc
```
