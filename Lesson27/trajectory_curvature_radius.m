% PLOT TRAJECTORY
t = 0:5/100:5;
x = 3*t;
y = 8*t.^3 - 4*t.^2;

plot(x, y, 'm', 'LineWidth', 3);
legend('x = 3*t ; y = 8*t^3 - 4*t^2');
title('TRAJECTORY OF MOTION EQUATION');
axis equal;
xlabel('x = 3*t');
ylabel('y = 8*t^3 - 4*t^2');
grid on;

% CALCULATE CURVATURE RADIUS
syms x y t
disp('TRAJECTORY EQUATIONS');
x = 3*t;
y = 8*t^3 - 4*t^2;
pretty(x);
pretty(y);

vx = diff(x, t);
vy = diff(y, t);
ax = diff(x, t, 2);
ay = diff(y, t, 2);
v(t) = sqrt(vx^2 + vy^2);
a(t) = sqrt(ax^2 + ay^2);
at = abs(diff(v(t), t));
an = sqrt(a^2 - at^2);

disp('Curvature radius of the trajectory at time t = 1s is: R(1) = v(1)^2 / an(1) =');
pretty(subs((v(t)^2 / an), t, 1));
disp('=');
fprintf('%.3f\n', subs((v(t)^2 / an), t, 1));
