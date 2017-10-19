function [ Rz ] = rz_deg( angle_deg )
%RX_DEG returns rotation matrix around x axis
%   Angle is provided in degrees

Rz = [cosd(angle_deg), -sind(angle_deg), 0;   ...
      sind(angle_deg),  cosd(angle_deg), 0;   ...
            0,                0,         1 ];

end

