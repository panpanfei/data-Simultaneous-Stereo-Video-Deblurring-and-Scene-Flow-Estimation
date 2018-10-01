# 

generate blur image

3D
[I_new_3d,flow,flowb] = blurImg3DKernel(depth_gt,image_clean,K,RT,RT2,tau,Num);

2D

[I_new,flow,flowb] = blurImg2DKernel(depth_gt,image_clean,K,RT,RT2,tau,Num);


depth_gt : the depth of the reference image

image_clean : the reference image (uint8 color)

K : camera mitrix (3*3)

RT :  motion (4*4)

RT2 :  backward motion (4*4)

tau : 1/2 * fps * exposure time  (0.23 for our data)

Num : 20 for our data
