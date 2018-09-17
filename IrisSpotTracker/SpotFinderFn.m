function Flecks_flag = SpotFinderFn(section_flecks)
%SPOTFINDERFN Summary of this function goes here
%   Detailed explanation goes here
    Flecks_flag = 0;
    lab_section_flecks = rgb2lab(section_flecks);
    hsv_section_flecks = rgb2hsv(lab_section_flecks);
    rounded_hsv = hsv_section_flecks(:,:,1);
    [hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
    [HSV_zeroVal,HSV_zeroIndex] = hSVRangeFinder_for_Spot(hsvCounts,hsvValues);
    [~,~,HSV_rangeMinValIndex,HSV_rangeMaxValIndex] = hSVSpotRangeFilter(HSV_zeroVal,HSV_zeroIndex);
    [MinIndex,MaxIndex] = bestFlecksRangeFinder(HSV_rangeMinValIndex,HSV_rangeMaxValIndex);
    sizeMax = size(hsvValues);
    maxHSVVal = hsvValues(sizeMax(1));
    minHSVVal = hsvValues(MaxIndex);
    delta = (maxHSVVal - minHSVVal) / 2; 
    maxHSVVal = minHSVVal + delta;
    [rows,columns,noChannels] = size(rounded_hsv);
    result = zeros(size(section_flecks));
        for x = 1:rows
            for y = 1:columns
                if((rounded_hsv(x,y) > minHSVVal))&&(rounded_hsv(x,y) < maxHSVVal)
                    result(x,y) = 255;

                end
            end 
        end

    upd_result = rgb2gray(result);   
    upd_result = im2bw(upd_result,0.1);    
    flecks_input = load('SampleInputSpotTrack\flecks_processing_sample\flecks_sample.mat');
    flecks = getfield(flecks_input,'flecks'); 
    ssimval = ssim(uint8(upd_result),uint8(flecks));
    
    if(ssimval > 0.999)
        %disp('Flecks Detected.');
        Flecks_flag = 1;
    else
        %disp('No Flecks Detected.');
        Flecks_flag = 0;
    end
end

