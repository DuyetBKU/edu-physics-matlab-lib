### 💻 Explanation of each command line:
```matlab
n= input('Nhap vao so dien tich diem, n= '); => câu lệnh input: nhập vào số điện tích điểm
X= zeros(1, n); Y= zeros(1, n); q= zeros(1, n); FX= zeros(n); FY= zeros(n); => tạo vector với n hàng
syms x y => khai báo biến
for i= 1:n  =>tạo vòng lặp số điện tích điểm
    disp('Nhap vao toa do cua dien tich diem') => in ra màn hình với dòng chữ 'Nhap vao toa do cua dien tich diem’
    X(i)= input('x= '); => nhập các giá trị x, y và giá trị điện tích q(i)
    Y(i)= input('y= ');
    q(i)= input('Gia tri cua dien tich, q(i)= ');
    for j= 1:i-1
        r=sqrt((X(i)-X(j))^2+(Y(i)-Y(j))^2);  =>tính khoảng cách phân bố theo công thức vector
        F= (9*10^9*q(i)*q(j))/r^2;  => tính lực tĩnh điện coulumb
        if (X(i)- X(j)) ~= 0 
            FX(i, j)= -(F*(X(i)-X(j)))/r*sign(X(i)-X(j)); => quá trình tính toán
        end
        if (Y(i)- Y(j)) ~= 0
            FY(i, j)= -(F*(Y(i)-Y(j)))/r*sign(X(i)-X(j));
        end
    end
end
FX= FX - FX'; FY= FY - FY';
FX= sum(FX, 1); FY= sum(FY, 1);
for i= 1:n
    disp(['FX(', num2str(i),') =', num2str(FX(i))]); => tính lực tĩnh điện theo x tại các điện tích điểm
    disp(['FY(', num2str(i),') =', num2str(FY(i))]); => tính lực tĩnh điện theo y tại các điện tích điểm
end

