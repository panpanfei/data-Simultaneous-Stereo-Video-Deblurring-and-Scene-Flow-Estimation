function Flow_est = flow_read_est(filename)
% loads flow field F from png file

load(filename);
F_u = F(:,:,1);
F_v = F(:,:,2);

F_valid = F(:,:,3);
F_u(F_valid==0) = 0;
F_v(F_valid==0) = 0;
Flow_est(:,:,1) = F_u;
Flow_est(:,:,2) = F_v;
Flow_est(:,:,3) = F_valid;

