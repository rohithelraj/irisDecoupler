function [MinIndex,MaxIndex] = bestFlecksRangeFinder(HSV_rangeMinValIndex,HSV_rangeMaxValIndex)
%HSVRANGEFILTER Finding the best zero ranges.
%   Arguments: HSV_rangeMinValIndex -> The index in hsvValues array, for the zero range's minimum value.
%              HSV_rangeMaxValIndex -> The index in hsvValues array, for the zero range's maximum value.
%   Return:    MinIndex -> The index value in hsvValues , for the longest zero value range's minimum value.
%              MaxIndex -> The index value in hsvValues , for the longest zero value range's maximum value.
    
    Range_size_max = size(HSV_rangeMaxValIndex);
    Range_size_min = size(HSV_rangeMinValIndex);
    MinIndex = 1;
    MaxIndex = 1;
    maxDiff = 0;
    for i = 1:Range_size_max(2)
        if(i < Range_size_min(2))
           diff =  HSV_rangeMaxValIndex(i) -  HSV_rangeMinValIndex(i);
           if(diff > maxDiff)
                maxDiff = diff;
                MinIndex = HSV_rangeMinValIndex(i);
                MaxIndex = HSV_rangeMaxValIndex(i);
           end
        end
    end

end

