tau = [3 0.05];
our ='/home/pan/Desktop/optical/stereo/data/text/result_fast/disp/';
gt = '/home/pan/Desktop/optical/stereo/data/groundtrue/disp_occ_0/';
as = '/home/pan/Desktop/optical/stereo/data/compare/as/disp/';
ag = '/home/pan/Desktop/optical/stereo/data/text/result/disp_0/';
for i = 1 :193
% disp('Load and show disparity map ... ');
D_gt  = disp_read([gt sprintf('%06d_%02d.png',i,10)]);

D_est = disp_read([ag sprintf('%06d_%02d.png',i,10)]);
d_err(i,1) = disp_error(D_gt,D_est,tau);

D_est = disp_read([as sprintf('%06d_%02d.png',i,10)]);
d_err(i,2) = disp_error(D_gt,D_est,tau);

D_est = disp_read([our sprintf('%06d_%02d.png',i,2)]);
d_err(i,3) = disp_error(D_gt,D_est,tau);
end