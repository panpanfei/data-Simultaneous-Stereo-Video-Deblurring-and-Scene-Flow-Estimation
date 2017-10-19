function [ Ry ] = ry_deg( angle_deg )
%RX_DEG returns rotation matrix around x axis
%   Angle is provided in degrees

Ry = [cosd(angle_deg),  0, sind(angle_deg); ...
            0,          1,        0;        ...
     -sind(angle_deg),  0, cosd(angle_deg) ];

end

