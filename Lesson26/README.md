### 💻 Explanation of each command line:
```matlab
% PLOT THE TRAJECTORY
t = 0:5/20:5;                        % Time vector from 0 to 5 with step size 5/20
x = 3*t - t.^3;                      % Define x(t) = 3*t - t^3
y = 4*(t.^2);                        % Define y(t) = 4*t^2

plot(x, y, '-c', 'LineWidth', 3);   % Plot the trajectory in cyan with line width 3
legend('x = 3*t - t^3, y = 4*t^2'); % Add legend to the plot
title('TRAJECTORY OF MOTION EQUATION'); % Title of the plot
axis equal;                         % Set equal scaling on both axes
xlabel('x = 3*t - t^3');            % Label for x-axis
ylabel('y = 4*t^2');                % Label for y-axis
grid on;                            % Enable grid

% CALCULATE ACCELERATION MAGNITUDE
syms x y t                          % Declare symbolic variables
disp('TRAJECTORY EQUATIONS');       
x = 3*t - t.^3;                     % Redefine x(t) symbolically
y = 4*(t.^2);                       % Redefine y(t) symbolically

ax = diff(x, t, 2);                 % Compute 2nd derivative of x(t) → acceleration component ax
ay = diff(y, t, 2);                 % Compute 2nd derivative of y(t) → acceleration component ay
a(t) = sqrt(ax^2 + ay^2);          % Compute total acceleration magnitude a(t)

disp('Acceleration ax = d^2x/dt^2 =');
pretty(ax)                         % Display ax in readable form
disp('Acceleration ay = d^2y/dt^2 =');
pretty(ay)                         % Display ay in readable form

disp('Acceleration magnitude at time t = 1 is: a(1) = sqrt(ax^2 + ay^2) =');
pretty(subs(a(t), t, 1))           % Evaluate and display a(1)
