### 💻 Explanation of each command line:
```matlab
clc                      % Clear command window
clear                    % Clear all variables from workspace
syms x y                 % Declare x and y as symbolic variables
N = 20;                              % Set the number of grid points
k = linspace(0,1,N);                 % Create a vector of N points from 0 to 1
[x, y] = meshgrid(k);               % Create a 2D grid of x and y values
V = input('Nhap ham dien the V(x,y)= ');   % Prompt user to input the electric potential function V(x,y)
figure(1),
surf(x, y, V),                        % Plot the potential V as a 3D surface
title('Mat the dien dang 3 chieu');  % Title: "3D Electric Potential Surface"
xlabel('x');                         % x-axis label
ylabel('y');                         % y-axis label
zlabel('V');                         % z-axis label (potential)
[Ex, Ey] = gradient(V);     % Calculate the partial derivatives of V w.r.t x and y (electric field components)
Ex = Ex * (-1);             % Electric field component Ex = -dV/dx
Ey = Ey * (-1);             % Electric field component Ey = -dV/dy
E = sqrt(Ex^2 + Ey^2);      % Compute magnitude of electric field E = sqrt(Ex² + Ey²)
u = 0.5 * 8.854E-12 * (norm(E).^2);  % Compute electric energy density: u = 0.5 * ε₀ * |E|²
disp(['Mat do nang luong dien truong'])    % Display label in Vietnamese: "Electric energy density"
u                                     % Output the value of u
figure(2),
contour(E / norm(E));                 % Plot normalized electric field magnitude as contour plot
title('Phan bo the dien don gian hoa 2 chieu');  % Title: "2D Simplified Electric Potential Distribution"
xlabel('x');
ylabel('y');
grid on
figure(3)
contour(x, y, V);                     % Plot electric potential V as contour lines
hold on
quiver(x, y, x + Ex, y + Ey);        % Overlay vector field (direction + relative strength of electric field)
title('Phan bo the dien ket hop mat do nang luong dien truong'); % Title: "Electric Potential + Energy Density Visualization"
xlabel('x');
ylabel('y');
grid on
```
```matlab
clc                      % Clear the command window
clear                    % Remove all variables from the workspace
syms x y                 % Declare symbolic variables x and y
[x, y] = meshgrid(-10:1:10, -10:1:10);   % Create a 2D grid of x and y values ranging from -10 to 10 with step size 1
V = input('Nhap ham dien the V(x,y)= ');   % Prompt the user to input the electric potential function V(x, y)
[Ex, Ey] = gradient(V);       % Compute the gradient (partial derivatives) of V: dV/dx and dV/dy
Ex = Ex * (-1);               % Electric field component Ex = -dV/dx
Ey = Ey * (-1);               % Electric field component Ey = -dV/dy
E = sqrt(Ex^2 + Ey^2);        % Calculate magnitude of electric field E = sqrt(Ex² + Ey²)
u = 0.5 * 8.854E-12 * (norm(E).^2);   % Compute electric field energy density: u = ½ * ε₀ * |E|²
disp(['Mat do nang luong dien truong']);  % Display label (in Vietnamese): "Electric field energy density"
u                               % Output the energy density u
E = sqrt(Ex^2 + Ey^2);        % Calculate magnitude of electric field E = sqrt(Ex² + Ey²)
u = 0.5 * 8.854E-12 * (norm(E).^2);   % Compute electric field energy density: u = ½ * ε₀ * |E|²
disp(['Mat do nang luong dien truong']);  % Display label (in Vietnamese): "Electric field energy density"
u                               % Output the energy density u
subplot(1, 2, 1);              % Prepare the first subplot (left panel)
surfc(x, y, V);                % Plot 3D surface of electric potential with contour base
xlabel('x');                   % x-axis label
ylabel('y');                   % y-axis label
zlabel('V');                   % z-axis label (Electric potential)
title('DO THI MAT DO NANG LUONG DIEN TRUONG');  % Title: "Electric Field Energy Density Graph"
grid on
subplot(1, 2, 2);              % Prepare the second subplot (right panel)
quiver(x, y, x + Ex, y + Ey);  % Draw vector field arrows representing the electric field direction
title('DO THI MAT DO NANG LUONG DIEN TRUONG');  % Title: "Electric Field Energy Density Graph"
xlabel('x');                   % x-axis label
ylabel('y');                   % y-axis label
grid on
```
