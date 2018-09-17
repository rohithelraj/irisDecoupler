function [accuracy,contrastingSphincterFlag] = contrastingShincterDetectorFn(section_stroma,section_collarette)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    lab_iris_actual_nopupil = rgb2lab(section_stroma);
    ab = lab_iris_actual_nopupil(:,:,2:3);
    accuracy = 0;
    nrows = size(ab,1);
    ncols = size(ab,2);
    ab = reshape(ab,nrows*ncols,2);
    nColors = 3;
    [cluster_idx, ~] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
    pixel_labels = reshape(cluster_idx,nrows,ncols);
    segmented_images = cell(1,3);
    rgb_label = repmat(pixel_labels,[1 1 3]);
    for k = 1:nColors
        color = section_stroma;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end
     [Avg_stromaRGB(1,1),Avg_stromaRGB(2,1), Avg_stromaRGB(3,1), Total_stroma(1,1) , ...
         ~] = AverageColorFinderforSphincter(segmented_images{1});
     [Avg_stromaRGB(1,2),Avg_stromaRGB(2,2), Avg_stromaRGB(3,2), Total_stroma(1,2) , ...
         ~] = AverageColorFinderforSphincter(segmented_images{2});
     [Avg_stromaRGB(1,3),Avg_stromaRGB(2,3), Avg_stromaRGB(3,3), Total_stroma(1,3) , ...
         ~] = AverageColorFinderforSphincter(segmented_images{3});
     [Avg_collaretteRGB(1),Avg_collaretteRGB(2), Avg_collaretteRGB(3), Total_collarette,...
         ~] = AverageColorFinderforSphincter(section_collarette);
     [Max_Total_stroma, Index_Max_Stroma_avg] = max(Total_stroma);

     if(abs(Max_Total_stroma - Total_collarette) > 40)
        if (abs(Avg_stromaRGB(1,Index_Max_Stroma_avg) - Avg_collaretteRGB(1))) > 19 ||...
                (abs(Avg_stromaRGB(2,Index_Max_Stroma_avg) - Avg_collaretteRGB(2))) > 19 ||...
                (abs(Avg_stromaRGB(3,Index_Max_Stroma_avg) - Avg_collaretteRGB(3))) > 19 
                accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
                %fprintf('Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',accuracy);
                contrastingSphincterFlag = 1;

        else
            accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
            %fprintf('No Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',100 - accuracy);
            contrastingSphincterFlag = 0;
        end
     else
         accuracy = AcuuracyCalculator(Avg_stromaRGB(:,Index_Max_Stroma_avg), Avg_collaretteRGB, 'contrastingSphincter');
         %fprintf('No Contrasting Sphincter  Detected. With an accuracy of -> %d Percentage',100 - accuracy);
         contrastingSphincterFlag = 0;
     end

end

