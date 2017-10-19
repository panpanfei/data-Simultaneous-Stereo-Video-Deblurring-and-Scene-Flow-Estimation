function [ Rx ] = rx_deg( angle_deg )
%RX_DEG returns rotation matrix around x axis
%   Angle is provided in degrees

Rx = [  1,      0,                  0;        ...
        0, cosd(angle_deg), -sind(angle_deg); ...
        0, sind(angle_deg),  cosd(angle_deg) ];

end

