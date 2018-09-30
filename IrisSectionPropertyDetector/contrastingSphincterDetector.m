%This main function is used to detect contrasting sphincter in an iris stroma section

[iris_actual_nopupil, section_limbalRing, section_flecks, section_collarette, section_stroma,...
    image_name] = imageDataLoader('contrasting sphincter',7);
idisp({section_stroma,section_collarette,iris_actual_nopupil});


lab_iris_actual_nopupil = rgb2lab(section_stroma);
ab = lab_iris_actual_nopupil(:,:,2:3);
cd = ab;
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);
nColors = 3;
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);
for k = 1:nColors
    color = section_stroma;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end
 [Avg_stromaRGB(1,1),Avg_stromaRGB(2,1), Avg_stromaRGB(3,1), Total_stroma(1,1) , ...
     count_stroma1] = AverageColorFinderforSphincter(segmented_images{1});
 [Avg_stromaRGB(1,2),Avg_stromaRGB(2,2), Avg_stromaRGB(3,2), Total_stroma(1,2) , ...
     count_stroma2] = AverageColorFinderforSphincter(segmented_images{2});
 [Avg_stromaRGB(1,3),Avg_stromaRGB(2,3), Avg_stromaRGB(3,3), Total_stroma(1,3) , ...
     count_stroma3] = AverageColorFinderforSphincter(segmented_images{3});
 [Avg_collaretteRGB(1),Avg_collaretteRGB(2), Avg_collaretteRGB(3), Total_collarette,...
     count_collarette] = AverageColorFinderforSphincter(section_collarette);
 [Max_Total_stroma, Index_Max_Stroma_avg] = max(Total_stroma);
 figure,imshow(segmented_images{1});
title(sprintf('Possible Contrasting Stroma Section \nRed-Avg.: %d \nGreen-Avg.: %d\nBlue-Avg.: %d\nMono-Avg.: %d\nPixel Count: %d',Avg_stromaRGB(1,1),Avg_stromaRGB(2,1), Avg_stromaRGB(3,1), Total_stroma(1,1) , ...
     count_stroma1));
figure,imshow(segmented_images{2});
title(sprintf('Possible Contrasting Stroma Section \nRed-Avg.: %d \nGreen-Avg.: %d\nBlue-Avg.: %d\nMono-Avg.: %d\nPixel Count: %d',Avg_stromaRGB(1,2),Avg_stromaRGB(2,2), Avg_stromaRGB(3,2), Total_stroma(1,2) , ...
     count_stroma2));
figure,imshow(segmented_images{3});
title(sprintf('Possible Contrasting Stroma Section \nRed-Avg.: %d \nGreen-Avg.: %d\nBlue-Avg.: %d\nMono-Avg.: %d\nPixel Count: %d',Avg_stromaRGB(1,3),Avg_stromaRGB(2,3), Avg_stromaRGB(3,3), Total_stroma(1,3) , ...
     count_stroma3));
figure,imshow(section_flecks);
title(sprintf('Section Collarette For Comparison \nRed-Avg.: %d \nGreen-Avg.: %d\nBlue-Avg.: %d\nMono-Avg.: %d\nPixel Count: %d',Avg_collaretteRGB(1),Avg_collaretteRGB(2), Avg_collaretteRGB(3), Total_collarette,...
     count_collarette));
 if(abs(Max_Total_stroma - Total_collarette) > 40)
    if (abs(Avg_stromaRGB(1,Index_Max_Stroma_avg) - Avg_collaretteRGB(1))) > 19 ||...
            (abs(Avg_stromaRGB(2,Index_Max_Stroma_avg) - Avg_collaretteRGB(2))) > 19 ||...
            (abs(Avg_stromaRGB(3,Index_Max_Stroma_avg) - Avg_collaretteRGB(3))) > 19 
            accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
            fprintf('Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',accuracy);
    
    else
        accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
        fprintf('No Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',100 - accuracy);
    end
 else
     accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
     fprintf('No Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',100 - accuracy);
 end

 