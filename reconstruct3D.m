%% reconstruct 3D Scene

%%
points3D = reconstructScene(disparityMapp, stereoParams);
% Convert to meters and create a pointCloud object
points3D = points3D ./  1000;
ptCloud = pointCloud(points3D, 'Color', J1_valid);
pcshow(ptCloud);
title('Point Cloud');