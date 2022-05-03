function [X,U,K] = simBBikeLQR(bbike_ol_disc,Kd,x0,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% initialise params to pre-allocate memory 
X = zeros(3, N);
U = zeros(1, N);
x = x0;
    for n = 1:N
        % compute Torque
        u = -Kd*x;
        % Save Values
        X(:, n) = x;
        U(:, n) = u;
        % Dynamics
        x = bbike_ol_disc.A*x + bbike_ol_disc.B*u;
    end
end