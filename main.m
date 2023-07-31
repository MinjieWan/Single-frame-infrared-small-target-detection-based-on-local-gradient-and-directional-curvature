% This code is an implementation of the small target detecton algorithm in our published paper: Minjie Wan, Yunkai Xu, Qinyan Huang et al., 
%"Single frame infrared small target detection based on local gradient and directional curvature"
% Please note that this code do not contain the segmentation step. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% If you have any questions, please contact:
% Author: Minjie Wan & Yunkai Xu
% Email: minjiewan1992@njust.edu.cn; xuyunkai@njust.edu.cn
% Copyright:  Nanjing University of Science and Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% License: Our code is only available for non-commercial research use.
clear all;
clc;
close all;

filename = 'test.tif';

%% parameter setting
opt. k = 0.5; % threshold of (Nmin / Nmax)
opt. N = 11; %  size of local window

%% upload IR image
img = imread(filename);
if size(img, 3) == 3
   img  = rgb2gray(img);
end

%% image processing
 Lmap  = LGDC_detection(img, opt);

%% display
figure(1);
imshow(img);
title('Input image');

figure(2);
imshow(Lmap);
title('Lmap');





