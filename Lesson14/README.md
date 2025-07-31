### 💻 Explanation of each command line:
```matlab
ở đây % + kí tự nào đó. Chỉ đơn giản là ghi chú trong matlab, không có ý nghĩa chạy chương trình
 syms tB tA v0 positive => syms: khai báo biến và nhận giá trị dương (positive) vì thời gian không thể âm
   g=10; %m/s^2  => gán số cho biến
   h=20; %m/s
 disp('Chon goc toa do tai O');      => disp: câu lệnh xuất kết quả ra màn hình
 disp('Chieu duong huong len');
%Qua trinh tinh toan va xuat du lieu
   hB=0.5*g*tB.^2; %m          => gán biến chiều cao của vật B (công thức rơi tự do)
 disp('Cong thuc roi tu do vat B: hB=1/2*g*t^2');
   f1=h-hB;                             => gán hàm f1 (có thể thay thành f(x) hay gì đó)
 disp('Thoi gian vat B roi:');      
   tB = solve(f1,tB)  => solve: câu lệnh giải hàm f1 theo biến tB ( ở đây chương trình mặc            định f1=0 rồi giải phương trình) 
 disp('Thoi gian vat A roi:');    
   tA=2+tB %s         => xuất kết quả thời gian tA(chỉ nhận t dương do lệnh positive)
 disp('Phuong trinh roi vat A: hA=(1/2)*g*tA^2 - v0*t');
   hA=-tA*v0 +0.5*g*tA^2; %m  => gán biến chiều cao của vật A( theo công thức)
   f2 = h -hA;       => gán hàm f2(tương tự như trên)
  disp('Van toc roi vat A la:');
   v0=solve(f2,v0) %m/s  => giải hàm f2 theo biến v0. Rồi xuất ra kết quả v0
%Ve do thi
subplot(2,1,2);     => lệnh tạo chia đồ thị thành các khung(ở đây 2,1,2 tức chia thành 2 hàng và 1 cột, số 2 cuối là chọn khung thứ 2 để vẽ)
 ezplot(tA,hA);   => lệnh vẽ hàm hA thành đường thẳng theo biến tA
 hold on    => câu lệnh “giữ” để vẽ đồ thị tiếp theo chồng lên đồ thị trước (đồ thị hB theo thời gian tB)
 ezplot(tB,hB);   => lệnh vẽ hàm hB thành đường thẳng theo biến tB
 hold off   => kết thúc câu lệnh “giữ”
 title('DO THI QUY DAO CUA VAT'); => lệnh đặt tên đồ thị ở khung 2
  legend('Cua vat A','Cua vat B');  => chú thích đường vẽ
  grid on   => bật lưới đồ thị
subplot(2,1,1);   => lệnh tạo chia đồ thị thành các khung(ở đây 2,1,1 tức chia thành 2 hàng và 1 cột, số 1 cuối là chọn khung thứ 1 để vẽ)
      t1=0:tA/20:tA;       gán t1= các giá trị thời gian từng phần, bằng cách cho giá trị đầu, giá trị cuối, rồi lấy bước nhảy (tương tự như table trong máy tính casio. ở đây start là 0, end là tA(=4s), step là tA/20 (4/20). Các quá trình trên được ngăn cách bằng dấu “:” (hoặc có thể dùng lệnh Linespace)
   hA=-t1.*v0 +0.5*g*t1.^2;   =>thay các giá trị thời gian từng phần ở trên vào hàm hA( giống Table, ta sẽ xuất ra được các giá trị hA tương ứng với t1 )
 plot(t1,hA,'--r','LineWidth', 2); =>hàm plot: vẽ đồ thị theo t1, và hA. 
                                      =>’- -r’: định dạng đường vẽ dạng gạch cách và màu đỏ (red)
                                      => Linewidth:bề dày đường đồ thị bằng 2 (cho nó đậm lên)
  hold on      => câu lệnh “giữ” để vẽ đồ thị tiếp theo chồng lên đồ thị trước (đồ thị hB theo thời gian tB), 
  t2=0:tB/20:tB;     tương tự như trên 
hB=0.5*g*t2.^2;
 plot(t2,hB,'--b','LineWidth', 2);   =>hàm plot: vẽ đồ thị theo t2, và hB. 
                                      =>’- -b’: định dạng đường vẽ dạng gạch cách và màu xanh(blue)
                                      => Linewidth:bề dày đường đồ thị bằng 2 (cho nó đậm lên)

  hold off     => kết thúc câu lệnh “giữ”
title('DO THI CHUYEN DONG CUA VAT');   => câu lệnh tiêu đề đồ thị
  legend('hA=t1.*v0 -0.5*g*t1.^2','hB=-0.5*g*t2.^2'); => câu lệnh chú thích đường đồ thị
   xlabel('THOI GIAN');     => chú thích trục hoành là THOI GIAN
   ylabel('TOA DO VAT BIEN DOI THEO THOI GIAN');   => chú thích trục tung là TOA DO VAT BIEN DOI THEO THOI GIAN
  grid on      => bật lưới đồ thị

