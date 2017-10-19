function [euler1_deg,euler2_deg] = EulerFromRot(R)
% EULERFROMROT returns 2 three-tuples of Euler angles in degrees
% 
%   E1 = EulerFromRot(R) returns one vector of Euler angles
%
%   [E1,E2] = EulerFromRot(R) returns both possible vectors of Euler angles
%
%   R is assumed to be computed as: 
%   R = rx_deg(E1(1)) * ry_deg(E1(2)) * rz_deg(E1(3))

% sin(phi) = sin(pi-phi)
phi1_rad = asin(R(1,3));
phi2_rad = pi - phi1_rad;

phi1_deg = phi1_rad / pi * 180;
phi2_deg = 180 - phi1_deg;

if abs(cos(phi1_rad)) < 10e-8
    sprintf('Gimbal Lock')
else
    omega1_rad = atan2( -R(2,3)/cos(phi1_rad), R(3,3)/cos(phi1_rad) );
    omega2_rad = atan2( -R(2,3)/cos(phi2_rad), R(3,3)/cos(phi2_rad) );

    omega1_deg = omega1_rad / pi * 180;
    omega2_deg = omega2_rad / pi * 180;
    
    kappa1_rad = atan2( -R(1,2)/cos(phi1_rad), R(1,1)/cos(phi1_rad) );
    kappa2_rad = atan2( -R(1,2)/cos(phi2_rad), R(1,1)/cos(phi2_rad) );

    kappa1_deg = kappa1_rad / pi * 180;
    kappa2_deg = kappa2_rad / pi * 180;
    
end

euler1_deg = [omega1_deg,phi1_deg,kappa1_deg];
euler2_deg = [omega2_deg,phi2_deg,kappa2_deg];

end