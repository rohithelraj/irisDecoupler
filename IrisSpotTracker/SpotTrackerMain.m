[~, ~, section_flecks, ~, ~, image_name] = imageDataLoader('without flecks',2);
lab_section_flecks = rgb2lab(section_flecks);
hsv_section_flecks = rgb2hsv(lab_section_flecks);
rounded_hsv = hsv_section_flecks(:,:,1);
[hsvCounts,hsvValues]  = imhist(rounded_hsv,1000);
[HSV_zeroVal,HSV_zeroIndex] = hSVRangeFinder(hsvCounts,hsvValues);
[HSV_rangeMinVal,HSV_rangeMaxVal,HSV_rangeMinValIndex,HSV_rangeMaxValIndex] = hSVRangeFilter(HSV_zeroVal,HSV_zeroIndex);
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
figure,imshow(result), title(sprintf('After H Thresholding: \nMin: %d \nMax: %d \nStructural Similarity Index: %d',minHSVVal,maxHSVVal,0));
figure,imshow(section_flecks), title('Actual Image');