[~, ~, section_flecks, ~, ~, image_name] = imageDataLoader('with flecks',5);
lab_section_flecks = rgb2lab(section_flecks);
hsv_section_flecks = rgb2hsv(lab_section_flecks);
rounded_hsv = hsv_section_flecks(:,:,1);
[hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
[M,I] = max(hsvCounts);
sortedCounts = sort(hsvCounts,'descend');
count_size = size(hsvCounts);
% Peak = hsvValues(I);
% for i = 1:count_size(1)
%     if(sortedCounts(41) == hsvCounts(i))
%         Peak = hsvValues(i);
%     end
% end

[RangeHSV_min,RangeHSV_max,CountHSV_min,CountHSV_max] = hSVRangeFinder(hsvCounts,hsvValues);
[RangeWiseCount] = hSVRangeWiseCountFinder(RangeHSV_min,RangeHSV_max,hsvCounts,hsvValues);
[BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter(RangeWiseCount,RangeHSV_min,RangeHSV_max,10);
lastRangeIndex = size(BestHSVRange_min);
[rows,columns,noChannels] = size(hsv_section_flecks);
value = BestHSVRange_max(lastRangeIndex(2)) - BestHSVRange_min(lastRangeIndex(2));
MaxRange = BestHSVRange_max(lastRangeIndex(2)) -(value/2);
MinRange = BestHSVRange_min(lastRangeIndex(2));
    for x = 1:rows
        for y = 1:columns
            if hsv_section_flecks(x,y,3) == 100
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
            if~((hsv_section_flecks(x,y,1) < MinRange))&&(hsv_section_flecks(x,y,1) > MaxRange)
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;            
            end
        end 
    end
upd_result = rgb2gray(result);   
upd_result = im2bw(upd_result,0.1); 