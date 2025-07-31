%tinh v de vat A roi xuong dat cham hon 2 giay so voi B
%Qua trinh khai bao va khoi tao
   syms tB tA v0 positive 
   g=10; %m/s^2 
   h=20; %m/s
 disp('Chon goc toa do tai O');
 disp('Chieu duong huong len');
%Qua trinh tinh toan va xuat du lieu
   hB=0.5*g*tB.^2; %m
 disp('Cong thuc roi tu do vat B: hB=1/2*g*t^2');
   f1=h-hB;
 disp('Thoi gian vat B roi:');
   tB = solve(f1,tB) 
 disp('Thoi gian vat A roi:');
   tA=2+tB %s
 disp('Phuong trinh roi vat A: hA=(1/2)*g*tA^2 - v0*t');
   hA=-tA*v0 +0.5*g*tA^2; %m
   f2 = h -hA;
  disp('Van toc roi vat A la:');
   v0=solve(f2,v0) %m/s
%Ve do thi
 subplot(2,1,2);
  ezplot(tA,hA);
   hold on
  ezplot(tB,hB);
   hold off
    title('DO THI QUY DAO CUA VAT');
     legend('Cua vat A','Cua vat B');
    grid on
subplot(2,1,1);
   t1=0:tA/20:tA;
   hA=-t1.*v0 +0.5*g*t1.^2;
    plot(t1,hA,'--r','LineWidth', 2);
  hold on
   t2=0:tB/20:tB;
   hB=0.5*g*t2.^2;
    plot(t2,hB,'--b','LineWidth', 2);
  hold off
    title('DO THI CHUYEN DONG CUA VAT');
     legend('hA=t1.*v0 -0.5*g*t1.^2','hB=-0.5*g*t2.^2');
      xlabel('THOI GIAN');
      ylabel('TOA DO VAT BIEN DOI THEO THOI GIAN');
    grid on
