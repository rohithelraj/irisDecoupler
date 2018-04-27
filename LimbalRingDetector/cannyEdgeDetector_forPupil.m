function cannyImageOutput = cannyEdgeDetector_forPupil(image, pupilBlob)
%CANNYEDGEDETECTOR_FORPUPIL Summary of this function goes here
%   Detailed explanation goes here
BW_canny = edge(image,'Canny');
box_side = sqrt(pupilBlob.bboxarea)/2;
hEllipse = imellipse(gca,[outputBlob.uc outputBlob.vc box_side box_side]);
binaryImage = hEllipse.createMask();

end

