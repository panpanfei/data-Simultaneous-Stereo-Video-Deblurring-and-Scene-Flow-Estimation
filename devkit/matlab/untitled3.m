tau = [3 0.05];
% our ='/home/pan/Desktop/optical/stereo/data/text/result_fast/flow/L//';
gt = '/home/pan/Desktop/optical/stereo/data/groundtrue/flow_occ/';
gt2 = '/home/pan/Desktop/optical/stereo/data/text/';
as = '/home/pan/Desktop/optical/stereo/data/compare/as/flow/';
% ag = '/home/pan/Desktop/optical/stereo/data/text/result/disp_0/';
for i = 1 :193
% disp('Load and show disparity map ... ');
F_gt  = flow_read([gt sprintf('%06d_%02d.png',i,10)]);
load([gt2 sprintf('kitti_%04d/flow/L/flow_est%03dto%03d.mat',i,10,11)]);
F_gt2 = Ff_l; 
% F_est = disp_read([ag sprintf('%06d_%02d.png',i,10)]);
% f_err(i,1) = flow_error(F_gt,F_est,tau);

F_est = flow_read([as sprintf('%06d_%02d.png',i,10)]);
f_err(i,1) = flow_error(F_gt,F_est,tau);
f_err(i,2) = flow_error(F_gt2,F_est,tau);


% F_est = disp_read([our sprintf('%06d_%02d.png',i,2)]);
% f_err(i,3) = flow_error(F_gt,F_est,tau);
end

