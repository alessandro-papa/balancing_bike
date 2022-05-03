function [fig] = plot_lqr_BBike(X,U, constraints)
%PLOT_LQR plot time-domain results of lqr experiment
%   X = state vector trajectory
%   U = input vector trajectory
%   constraints = limiting constraint of robot
%% plot result
% X = X';
% U = U';
%% create time vector
N = length(X(1,:));
t = 0.02*(0:N-1)';
fig = figure;
fig.Position = [100 100 1200 600];
% pitch plot
subplot(2,3,[1,4]); hold on; grid on;
plot(t, rad2deg(X(1,:))); 
emlXLabel('time [s]');
emlYLabel(['pitch [$^\circ$]']);

% pitch velocity
subplot(2,3,2); hold on; grid on;
plot(t, X(2,:));
emlXLabel('time [s]');
emlYLabel('pitch velocity [$\frac{^\circ}{sec}$]');

% flywheel velocity plot
subplot(2,3,3); hold on; grid on;
plot(t, X(3,:));
yline(constraints.flywheelVelocityMax,'--k', 'LineWidth', 2);
yline(-constraints.flywheelVelocityMax,'--k', 'LineWidth', 2);
emlXLabel('time [s]');
emlYLabel('flywheel velocity [$\frac{rad}{sec}$]');

% torque plot
subplot(2,3,5); hold on; grid on;
plot(t, U(1,:));
yline(constraints.flywheelTorqueMax,'--k', 'LineWidth', 2);
yline(-constraints.flywheelTorqueMax,'--k', 'LineWidth', 2);
emlXLabel('time [s]');
emlYLabel('torque [Nm]');

end

