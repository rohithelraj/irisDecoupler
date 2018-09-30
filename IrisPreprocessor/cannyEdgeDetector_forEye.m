function cannyImageOutput = cannyEdgeDetector_forEye(image)
%CANNYEDGEDETECTOR_FORPUPIL returns the edge detected output, edge detection using Canny Edge detection algorithm.
%   Argument: image -> RGB image.
gray = rgb2gray(image);
cannyImageOutput = edge(gray,'Canny');

end

