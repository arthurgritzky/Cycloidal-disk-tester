
% Cycloidal Disk tester


R=45; % Radius of the cycloidal drive 
Rr=5; % Radius of the roller pins
N=12; % Number of roller oins
E=3;  % Eccentricity of the disk


t = 0:0.001:2*pi; 
% Parametric equations for the cycloidal diks
X = (R * cos(t)) - (Rr * cos(t + atan(sin((1-N) * t) ./ ((R/(E*N)) - cos((1-N) * t) )))) - (E * cos(N * t));
Y = (-R * sin(t)) + (Rr * sin(t + atan(sin((1-N) * t) ./ ((R/(E*N)) - cos((1-N) * t) )))) + (E * sin(N * t));
figure;
plot(X, Y, 'LineWidth', 2);
grid on;