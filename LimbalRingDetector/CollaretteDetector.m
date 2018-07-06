[iris_actual_nopupil,img_name] = imageDataLoader('no Limbal Ring',4);
%This detection works only with green colored eyes.
result = iris_actual_nopupil;
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
hsv = rgb2hsv(lab_iris_actual_nopupil);
%generic implementation for all colored eyes.
rounded_hsv = hsv(:,:,1);
[hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
[M,I] = max(hsvCounts);
sortedCounts = sort(hsvCounts,'descend');
count_size = size(hsvCounts);
Peak = hsvValues(I);
for i = 1:count_size(1)
    if(sortedCounts(41) == hsvCounts(i))
        Peak = hsvValues(i);
    end
end

[RangeHSV_min,RangeHSV_max,CountHSV_min,CountHSV_max] = hSVRangeFinder(hsvCounts,hsvValues);
[RangeWiseCount] = hSVRangeWiseCountFinder(RangeHSV_min,RangeHSV_max,hsvCounts,hsvValues);
[BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter(RangeWiseCount,RangeHSV_min,RangeHSV_max,10);
lastRangeIndex = size(BestHSVRange_min);
[rows,columns,noChannels] = size(hsv);
value = BestHSVRange_max(lastRangeIndex(2)) - BestHSVRange_min(lastRangeIndex(2));
MaxRange = BestHSVRange_max(lastRangeIndex(2)) -(value/2);
MinRange = BestHSVRange_min(lastRangeIndex(2));
    for x = 1:rows
        for y = 1:columns
            if hsv(x,y,3) == 100
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
            if~((hsv(x,y,1) < MinRange))&&(hsv(x,y,1) > MaxRange)
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;            
            end
        end 
    end
  idisp({result,iris_actual_nopupil});  