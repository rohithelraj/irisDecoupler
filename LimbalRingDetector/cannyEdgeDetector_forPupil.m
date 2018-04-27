function cannyImageOutput = cannyEdgeDetector_forPupil(image)
%CANNYEDGEDETECTOR_FORPUPIL Summary of this function goes here
%   Detailed explanation goes here
gray = rgb2gray(image);
cannyImageOutput = edge(gray,'Canny');

end

