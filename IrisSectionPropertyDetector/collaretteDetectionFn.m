function Collarette_flag = collaretteDetectionFn(section_collarette)
%COLLARETTEDETECTIONFN Summary of this function goes here
%   Detailed explanation goes here
    Collarette_flag = 0;
    result = section_collarette;
    lab_iris_actual_nopupil = rgb2lab(section_collarette);
    hsv = rgb2hsv(lab_iris_actual_nopupil);
    %generic implementation for all colored eyes.
    rounded_hsv = hsv(:,:,1);
    [hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
    [M,I] = max(hsvCounts);
    sortedCounts = sort(hsvCounts,'descend');
    count_size = size(hsvCounts);
    [RangeHSV_min,RangeHSV_max,CountHSV_min,CountHSV_max] = hSVCollarette_LimbalRangeFilter(hsvCounts,hsvValues);
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
    upd_result = rgb2gray(result);   
    upd_result = im2bw(upd_result,0.1);    


    colatrette = load('Sample_inputs\collarate_processing_sample\collarette_amber.mat');
    collarette_amber = getfield(colatrette,'collarette_amber');    
    ssimval = ssim(uint8(upd_result),uint8(collarette_amber));
    
    if(ssimval > 0.999)
        Collarette_flag = 1;
    else
        Collarette_flag = 0;
    end
end

