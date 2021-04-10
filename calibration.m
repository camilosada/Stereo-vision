%% Calibration
%%
% Specify images containing a checkerboard for calibration.
rightImages = imageDatastore('C:\Users\camil\OneDrive\Escritorio\MoCa\photos\left');
leftImages = imageDatastore('C:\Users\camil\OneDrive\Escritorio\MoCa\photos\right');

% Detect the checkerboards.
[imagePoints,boardSize] = detectCheckerboardPoints(...
    leftImages.Files,rightImages.Files);

% Specify world coordinates of checkerboard keypoints.
squareSizeInMillimeters = 54;
worldPoints = generateCheckerboardPoints(boardSize,squareSizeInMillimeters);

% Read in the images.
I1 = readimage(leftImages,1);
I2 = readimage(rightImages,1);
imageSize = [size(I1,1),size(I1,2)];

% Calibrate the stereo camera system.
stereoParams = estimateCameraParameters(imagePoints,worldPoints, ...
                                        'ImageSize',imageSize);
% figure; 
% showExtrinsics(stereoParams, 'CameraCentric');


