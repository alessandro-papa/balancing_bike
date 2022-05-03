function out = getBBikeLinearizedSystemsDynamics()
% generate linearized systems parameter out of physical parameters
    % get Chabo parameters
	p = getBBikeParameters();
    
    % linear factors see regelungstechnik_msys PDF
    % cancel out friction. Ctheta = 0, Cpsi = 0

    out.a1 = p.g * (p.mR*p.lAB + p.mK * p.lAC) / ( p.thetaKA + p.mR * p.lAB^2 );
    out.b1 = 1 / ( p.thetaKA + p.mR * p.lAB^2 );

    out.a4 = out.a1;
    out.b2 = 1 / p.thetaRB;

    % max motor torque
    out.uMax    = p.uMax; 
    out.psiDmax = p.psiDmax;
end 