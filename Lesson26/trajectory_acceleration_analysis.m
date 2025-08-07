t = 0:5/20:5;
x = 3*t - t.^3;
y = 4*(t.^2);

plot(x, y, '-c', 'LineWidth', 3);
legend('x = 3*t - t^3, y = 4*t^2');
title('TRAJECTORY OF MOTION EQUATION');
axis equal;
xlabel('x = 3*t - t^3');
ylabel('y = 4*t^2');
grid on;

syms x y t
disp('TRAJECTORY EQUATIONS');
x = 3*t - t.^3;
y = 4*(t.^2);

ax = diff(x, t, 2);
ay = diff(y, t, 2);
a(t) = sqrt(ax^2 + ay^2);

disp('Acceleration ax = d^2x/dt^2 =');
pretty(ax)
disp('Acceleration ay = d^2y/dt^2 =');
pretty(ay)

disp('Acceleration magnitude at time t = 1 is: a(1) = sqrt(ax^2 + ay^2) =');
pretty(subs(a(t), t, 1))
