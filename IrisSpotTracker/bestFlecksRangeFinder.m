function [MinIndex,MaxIndex] = bestFlecksRangeFinder(HSV_rangeMinValIndex,HSV_rangeMaxValIndex)
%HSVRANGEFILTER Summary of this function goes here
%   Computes all the ranges, that provide best possiblities to be a
%   collorette section.
%   HSV_rangeMinValIndex will be 1 value less than HSV_rangeMaxValIndex
    
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

