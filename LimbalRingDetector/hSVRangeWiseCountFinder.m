function [RangeWiseCount] = hSVRangeWiseCountFinder(RangeHSV_min,RangeHSV_max,hsvCounts,hsvValues)
%HSVRANGEFILTER Summary of this function goes here
%   Computes all the ranges, that provide best possiblities to be a
%   collorette section.
    HSV_size = size(hsvCounts);
    Range_size = size(RangeHSV_min);
    RangeWiseCount = zeros(1,Range_size(2));
    for i = 1:Range_size(2)
        for j = 1: HSV_size(1)
            if((hsvValues(j) > RangeHSV_min(i))&&(hsvValues(j) < RangeHSV_max(i)))
                RangeWiseCount(i) = RangeWiseCount(i) + hsvCounts(j);
            end
        end
    end

end

