[iris_actual_nopupil,img_name] = imageDataLoader('no Limbal Ring',1);
%This detection works only with green colored eyes.
result = iris_actual_nopupil;
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
hsv = rgb2hsv(lab_iris_actual_nopupil);
%generic implementation for all colored eyes.
rounded_hsv = round(hsv(:,:,1),5);
[hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
[RangeHSV_min,RangeHSV_max,CountHSV_min,CountHSV_max] = hSVRangeFinder(hsvCounts,hsvValues);
[RangeWiseCount] = hSVRangeWiseCountFinder(RangeHSV_min,RangeHSV_max,hsvCounts,hsvValues);
[BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter(RangeWiseCount,RangeHSV_min,RangeHSV_max,100);
[rows,columns,noChannels] = size(hsv);
    for x = 1:rows
        for y = 1:columns
            if hsv(x,y,3) == 100
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
            if~((hsv(x,y,1) > BestHSVRange_min(1))&&(rounded_hsv(x,y) < BestHSVRange_max(1)))
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;            
            end
        end 
    end
  idisp({result,iris_actual_nopupil});  