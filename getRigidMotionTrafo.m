function R = getRigidMotionTrafo(euler)

    rx_deg_ = euler(1);
    ry_deg_ = euler(2);
    rz_deg_ = euler(3);
    Rx = rx_deg(rx_deg_);
    Ry = ry_deg(ry_deg_);
    Rz = rz_deg(rz_deg_);

    R  = Rx * Ry * Rz; 
    
%     Tr = [R,[tx;ty;tz];0,0,0,1];

end