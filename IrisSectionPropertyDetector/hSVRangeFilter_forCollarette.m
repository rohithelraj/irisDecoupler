function [BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter(RangeWiseCount,RangeHSV_min,RangeHSV_max,countThreshold)
%HSVRANGEFILTER Summary of this function goes here
%   Filers the best ranges that havve the possibilies to be a collarette
%   section.
    counter_range = 1;
    BestHSVRange_min(1) = 0.0000;
    BestHSVRange_max(1) = 0.0000;
    BestRangeWiseCount(1) = 0;
    Range_size = size(RangeHSV_min);
    
    for i = 1:Range_size(2)
        %fprintf('\n in with: %d',RangeWiseCount(i));
        if(RangeWiseCount(i) > countThreshold)
            %fprintf('\n out with: %d at counter : %d',RangeWiseCount(i),counter_range);
            BestHSVRange_min(counter_range) = RangeHSV_min(i);
            BestHSVRange_max(counter_range) = RangeHSV_max(i);
            BestRangeWiseCount(counter_range) = RangeWiseCount(i);
            counter_range = counter_range + 1;
        end
    end
end