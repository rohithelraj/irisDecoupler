function [HSV_rangeMinVal,HSV_rangeMaxVal,HSV_rangeMinValIndex,HSV_rangeMaxValIndex] = hSVSpotRangeFilter(HSV_zeroVal,HSV_zeroIndex)
%HSVRANGEFILTER Summary of this function goes here
%   Filers the best ranges that havve the possibilies to be a collarette
%   section.
    maxSize = size(HSV_zeroVal);
    HSV_rangeMinVal(1) = 0.0000;
    HSV_rangeMaxVal(1) = 0.0000;

    HSV_rangeMinValIndex(1) = 1;
    HSV_rangeMaxValIndex(1) = 1;
    minCount = 1;
    maxCount = 1;
    	
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

