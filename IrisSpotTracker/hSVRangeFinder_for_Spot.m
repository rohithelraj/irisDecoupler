function [HSV_zeroVal,HSV_zeroIndex] = hSVRangeFinder(hsvCounts,hsvValues)
%HSVRANGEFINDER Finds all the intensity values and indexes in the histogram with zero pixels.

                %   Arguments: hsvCounts -> array of the number of pixels with in  histogram intensity .
                %              hsvValues -> array of the histogram intensity value.
                %   Return: HSV_zeroVal -> the zero intensity values array.
                %           HSV_zeroIndex -> the array of zero intensity value's index in hsvValues array.

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

