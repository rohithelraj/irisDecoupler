
[iris_actual_nopupil, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name]= imageDataLoader('with Limbal Ring',3);
%This detection works only with green colored eyes.
result = section_collarette;
lab_iris_actual_nopupil = rgb2lab(section_collarette);
hsv = rgb2hsv(lab_iris_actual_nopupil);
%generic implementation for all colored eyes.
rounded_hsv = hsv(:,:,1);
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
[BestHSVRange_min,BestHSVRange_max,BestRangeWiseCount] = hSVRangeFilter_forCollarette(RangeWiseCount,RangeHSV_min,RangeHSV_max,10);
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
    
    
colatrette = load('Sample_inputs_prop_detect\collarate_processing_sample\collarette_amber.mat');
collarette_amber = getfield(colatrette,'collarette_amber');    
ssimval = ssim(uint8(upd_result),uint8(collarette_amber));

%binaryImage_iris_compl = imcomplement(binaryImage_iris);
%detections = iblobs(collarette_amber);
%[outputBlob,blobCount] = blobNoiseReduction( detections, 1000 , 10 );
%figure,imshow(detect_collarete), title('Existing Probable Collarette Section');  
figure,imshow(result), title(sprintf('After H Thresholding: \nMin: %d \nMax: %d \nStructural Similarity Index: %d',MinRange,MaxRange,ssimval));
figure,imshow(section_collarette), title('Actual Image');
if(ssimval > 0.999)
    disp('Collarette Detected.');
else
    disp('No Collarette Detected.');
end

