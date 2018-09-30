function [RangeWiseCount] = hSVRangeWiseCountFinder(RangeHSV_min,RangeHSV_max,hsvCounts,hsvValues)
%HSVRANGEFILTER Computes the range wise count.
%   Return: RangeWiseCount -> The number of pixels in a in a range.
%   Arguments: RangeHSV_min -> The minimum range values array.
%              RangeHSV_max -> The maximum range values array.
%              hsvCounts -> The number of pixels with in a histogram intensity.
%              hsvValues -> The histogram intensity value.
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

