function [BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter(RangeWiseCount,RangeHSV_min,RangeHSV_max,countThreshold)
%HSVRANGEFILTER filters out the best histogram ranges without zero count for intensity points, finding the length ranges above countThrehold.
                %   Return: BestHSVRange_min -> The minimum best range values array.
                %           BestHSVRange_max -> The maximum best range values array.
                %           BestRangeWiseCount -> The number of pixels in a in a range array.
                %   Arguments: RangeHSV_min -> The minimum range values array.
                %              RangeHSV_max -> The maximum range values array.
                %              RangeWiseCount -> The number of pixels in a in a range.
                %              countThreshold -> The minimum number of count to be considered for a range to be the best ranges.
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

