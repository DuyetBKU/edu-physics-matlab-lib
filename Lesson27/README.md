### 💻 Explanation of each command line:
```matlab
% PLOT TRAJECTORY
t = 0:5/100:5;                     % Define time vector from 0 to 5 with 100 steps
x = 3*t;                           % Parametric equation for x as a function of t
y = 8*t.^3 - 4*t.^2;               % Parametric equation for y as a function of t

plot(x, y, 'm', 'LineWidth', 3);   % Plot the trajectory in magenta with line width = 3
legend('x = 3*t ; y = 8*t^3 - 4*t^2');  % Add legend to describe the trajectory
title('TRAJECTORY OF MOTION EQUATION'); % Set plot title
axis equal;                        % Keep aspect ratio equal between axes
xlabel('x = 3*t');                 % Label x-axis
ylabel('y = 8*t^3 - 4*t^2');       % Label y-axis
grid on;                           % Enable grid

% CALCULATE CURVATURE RADIUS
% --- Declaration Phase ---
syms x y t                        % Declare symbolic variables for x, y, t

disp('TRAJECTORY EQUATIONS');    
x = 3*t;                          % Define x again as symbolic expression
y = 8*t^3 - 4*t^2;                % Define y again as symbolic expression
pretty(x);                        % Display x expression nicely
pretty(y);                        % Display y expression nicely

% --- Computation Phase ---
vx = diff(x, t);                  % Compute velocity component in x (dx/dt)
vy = diff(y, t);                  % Compute velocity component in y (dy/dt)
ax = diff(x, t, 2);               % Compute acceleration in x (d²x/dt²)
ay = diff(y, t, 2);               % Compute acceleration in y (d²y/dt²)

v(t) = sqrt(vx^2 + vy^2);         % Compute total speed (magnitude of velocity vector)
a(t) = sqrt(ax^2 + ay^2);         % Compute total acceleration (magnitude)

at = abs(diff(v(t), t));          % Compute tangential acceleration (time derivative of speed)
an = sqrt(a^2 - at^2);            % Compute normal (centripetal) acceleration

% --- Output Phase ---
disp('Curvature radius of the trajectory at time t = 1s is: R(1) = v(1)^2 / an(1) =');
pretty(subs((v(t)^2 / an), t, 1));  % Display symbolic result of curvature radius at t = 1
disp('=');
fprintf('%.3f\n', subs((v(t)^2 / an), t, 1)); % Display numerical result of curvature radius at t = 1 (unit: meters)
