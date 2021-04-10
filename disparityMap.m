%% Disparity Map

%%
I1 = J1_valid;
I2 = J2_valid;
J1 = rgb2gray(I1);
J2 = rgb2gray(I2);

%%
disparityRange = [34 82];
disparityMapp = disparitySGM(J1,J2,'DisparityRange',disparityRange,'UniquenessThreshold',25);

figure
imshow(disparityMapp,disparityRange)
title('Disparity Map')
colormap jet
colorbar

