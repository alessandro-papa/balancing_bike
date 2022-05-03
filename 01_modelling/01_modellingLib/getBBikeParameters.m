function [para] = getBBikeParameters()
% set physical parameters here
% for nomenclature see MSys script chapter 8b
%%   masses  
    para.mK         = 2;     % body / körper
    para.mR         = 1;     % flywheel / rad
%%   moments of inertia (körper K + rad R)
    para.thetaKA    = 2 * 2.8e-3;     %   theta_K with respect to balance point (A)
    para.thetaRB    = 4 * 1.17e-4;     %   theta_R with respect to its COM (B)
%%   geometry
    para.lAB        = 0.084;    % distance balance point (A) to flywheel
    para.lAC        = 0.085;    % distance balance point (A) to COM of whole robot
%%   physics
    para.g          = 9.81;
%%   input constraints
    para.uMax       = 1;    % [Nm]
    para.psiDmax    = 410;  % [rad / sec]
%%   calculate masses
    para.m = para.mK + para.mR;
end