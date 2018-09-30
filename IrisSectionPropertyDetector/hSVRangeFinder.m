function [RangeHSV_min_upd,RangeHSV_max_upd,CountHSV_min_upd,CountHSV_max_upd] = hSVRangeFinder(hsvCounts,hsvValues)
%HSVRANGEFINDER Finds all the ranges separated by zeros
%   Computes all the ranges in a histogram, that have  continiously non zero data points(non zeros at intensity).
%   Arguments: hsvCounts -> array of the number of pixels with in  histogram intensity .
%              hsvValues -> array of the histogram intensity value.
%   Return: RangeHSV_min_upd -> The minimum  range values array.
%           RangeHSV_max_upd -> The maximum  range values array.
%           CountHSV_min_upd -> The pixel count at minimum  range values array.
%           CountHSV_max_upd -> The pixel count at maximum  range values array.
    counter_range = 1;
    first_flag = 0;
    count_size = size(hsvCounts);
    min_hsv_val = 0.0000;
    max_hsv_val = 0.0000;
    min_count_val = 0;
    max_count_val = 0;
    RangeHSV_min(1) = 0.0000;
    RangeHSV_max(1) = 0.0000;
    CountHSV_min(1) = 0;
    CountHSV_max(1) = 0;
    for z = 1:count_size(1)
        if(hsvCounts(z) ~= 0)
            if(first_flag == 0)
                min_hsv_val = hsvValues(z);
                min_count_val = hsvCounts(z);
                first_flag = 1;
            end
            max_hsv_val = hsvValues(z);
            max_count_val = hsvCounts(z);
            RangeHSV_min(counter_range) = min_hsv_val;
            RangeHSV_max(counter_range) = max_hsv_val;
            CountHSV_min(counter_range) = min_count_val;
            CountHSV_max(counter_range) = max_count_val;        
        else
            first_flag = 0;
            counter_range = counter_range + 1;
        end
    end
    RangeHSV_min_upd(1) = 0.0000;
    RangeHSV_max_upd(1) = 0.0000;
    CountHSV_min_upd(1) = 0;
    CountHSV_max_upd(1) = 0;
    range_size = size(RangeHSV_min);
    counter_range_upd = 1;
    for z = 1:range_size(2)
        if(RangeHSV_min(z) ~= RangeHSV_max(z))
            if(((z+1) < range_size(2))||((z+1) == range_size(2)))
                if((RangeHSV_min(z) ~= RangeHSV_min(z+1)))
                    RangeHSV_min_upd(counter_range_upd) = RangeHSV_min(z);
                    RangeHSV_max_upd(counter_range_upd) = RangeHSV_max(z);
                    CountHSV_min_upd(counter_range_upd) = CountHSV_min(z);
                    CountHSV_max_upd(counter_range_upd) = CountHSV_max(z);
                    counter_range_upd = counter_range_upd + 1;
                end
            elseif(z == range_size(2))
                RangeHSV_min_upd(counter_range_upd) = RangeHSV_min(z);
                RangeHSV_max_upd(counter_range_upd) = RangeHSV_max(z);
                CountHSV_min_upd(counter_range_upd) = CountHSV_min(z);
                CountHSV_max_upd(counter_range_upd) = CountHSV_max(z);
            end

        end
    end
end

