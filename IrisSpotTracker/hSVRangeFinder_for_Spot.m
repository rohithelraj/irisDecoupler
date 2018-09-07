function [HSV_zeroVal,HSV_zeroIndex] = hSVRangeFinder(hsvCounts,hsvValues)
%HSVRANGEFINDER Summary of this function goes here
%   mechanism to find the range
    counter_range = 1;
    first_flag = 0;
    count_size = size(hsvCounts);
    
    HSV_zeroVal(1) = 0.0000;
    HSV_zeroIndex(1) = 1;
    for z = 1:count_size(1)
        if(hsvCounts(z) == 0)
            HSV_zeroVal(counter_range) = hsvValues(z);
            HSV_zeroIndex(counter_range) = z;
            counter_range = counter_range + 1;        
        end
    end
    
end

