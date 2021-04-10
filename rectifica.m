%% Rectify Stereo Images

%%
load('calibracion2_5.mat')

I1 = imread('C:\Users\camil\OneDrive\Escritorio\MoCa\photos\leftpos\GOPR2544.jpg');%left
I2 = imread('C:\Users\camil\OneDrive\Escritorio\MoCa\photos\righttpos\GOPR2184.jpg');%right

% Rectify the images using 'full' output view.
[J1_full,J2_full] = rectifyStereoImages(I1,I2,stereoParams, ...
  'OutputView','full');
%%
% Display the result for 'full' output view.
figure; 
imshow(stereoAnaglyph(J1_full,J2_full));
%%
% Rectify the images using 'valid' output view. This is most suitable
% for computing disparity.
[J1_valid,J2_valid] = rectifyStereoImages(I1,I2,stereoParams, ...
  'OutputView','valid');
%%
% Display the result for 'valid' output view.
imtool(stereoAnaglyph(J1_valid,J2_valid));