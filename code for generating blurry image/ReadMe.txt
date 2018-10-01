
The image can be generate as 

I_blur_rgb=calc_blurimg(u_forward, v_forward,u_backward, v_backward, I_clean_rgb, tau, iter)

u is for horizontal direction;
v is for vertical direction;

forward means the direction from I_0 to I_1;
backward means the direction from I_0 to I_{-1};


tau can be seen as half of the exposure time, and iter is the number of sample between them.
Here, tau = 0.5 and iter = 70 in our paper. 

############################################################################################

@inproceedings{pan2017simultaneous,
  title={Simultaneous stereo video deblurring and scene flow estimation},
  author={Pan, Liyuan and Dai, Yuchao and Liu, Miaomiao and Porikli, Fatih},
  booktitle={Computer Vision and Pattern Recognition (CVPR), 2017 IEEE Conference on},
  pages={6987--6996},
  year={2017},
  organization={IEEE}
}

############################################################################################

