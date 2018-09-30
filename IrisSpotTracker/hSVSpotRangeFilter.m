function [HSV_rangeMinVal,HSV_rangeMaxVal,HSV_rangeMinValIndex,HSV_rangeMaxValIndex] = hSVSpotRangeFilter(HSV_zeroVal,HSV_zeroIndex)
%HSVRANGEFILTER Finds all the ranges separated by zeros
                %   Computes all the ranges in a histogram, that have  continiously non zero data points(non zeros at intensity).
                %   Arguments: HSV_zeroVal -> the zero intensity values array.
                 %           HSV_zeroIndex -> the array of zero intensity value's index in hsvValues array.
                %   Return: HSV_rangeMinVal -> The minimum  range values array.
                %           HSV_rangeMaxVal -> The maximum  range values array.
                %           HSV_rangeMinValIndex -> The index in hsvValues array.
                %           HSV_rangeMaxValIndex -> The index in hsvValues array.
    maxSize = size(HSV_zeroVal);
    HSV_rangeMinVal(1) = 0.0000;
    HSV_rangeMaxVal(1) = 0.0000;

    HSV_rangeMinValIndex(1) = 1;
    HSV_rangeMaxValIndex(1) = 1;
    minCount = 1;
    maxCount = 1;
 for i = 1:maxSize(2)
    if(i == 1)
        HSV_rangeMinVal(minCount) = HSV_zeroVal(i);
        HSV_rangeMinValIndex(minCount) = HSV_zeroIndex(i);
        minCount = minCount + 1;

    else
        
        if(HSV_zeroIndex(i-1) == (HSV_zeroIndex(i) - 1) )
            continue
        else
            HSV_rangeMaxVal(maxCount) = HSV_zeroVal(i);
            HSV_rangeMaxValIndex(maxCount) = HSV_zeroIndex(i);
            maxCount = maxCount + 1;
            if((i+1)<maxSize(2))
                HSV_rangeMinVal(minCount) = HSV_zeroVal(i);
                HSV_rangeMinValIndex(minCount) = HSV_zeroIndex(i);
                minCount = minCount + 1;
            end
        end

    end
 end
end


