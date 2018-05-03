function irisCoordinates = findIrisCoordinates(pupilPoint,centroid,radii_spatial)
%FINDIRISCOORDINATES Summary of this function goes here
%Eucledian Distance between two points (x,y) and (X,Y) is D.
% In case of points |E|,|F|,|G|,|H|.
% To find coordinates of |€|,|n|,|L|,|z|.
%               cent.
%                 |
%                 |
%                 |
%        |E|      |
%                |A|
%                 |
%                 |
%                 |
%                 |
%   |€|           |
%                |a|            
% For line cent.--> |€|
% ((cent_x^2) + (X^2) + (2*cent_x*X) )+((cent_y^2) + (Y^2) + (2*cent_y*Y)) = (( D + radii_spatial)^2)
% For line |E|--> |€|
% ((x^2) + (X^2) + (2*x*X) )+((y^2) + (Y^2) + (2*y*Y)) = (radii_spatial^2)
% Then both must be solved for, to find coordinates of |€|,|n|,|L|,|z|. 

end

