function [resultant,iris_actual] = imageNoiseRemover()
    %IMAGENOISEREMOVER Summary of this function goes here
    %   Detailed explanation goes here
    noise_removal_sample = iread('eye_sections\noiseRemovalSample.jpg');

    lab_noise_removal_sample = rgb2lab(noise_removal_sample);
    ab = lab_noise_removal_sample(:,:,2:3);
    cd=ab;
    nrows = size(ab,1);
    ncols = size(ab,2);
    ab = reshape(ab,nrows*ncols,2);
    nColors = 3;
    [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
    pixel_labels = reshape(cluster_idx,nrows,ncols);
    segmented_images = cell(1,3);
    rgb_label = repmat(pixel_labels,[1 1 3]);
    for k = 1:nColors
        color = noise_removal_sample;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end

    noiseless_iris_section1 = segmented_images{1};
    noiseless_iris_section2 = segmented_images{2};
    noiseless_iris_section = rgb2gray(segmented_images{3});
    resultant = noiseless_iris_section;
    
    [rows,columns,noChannels] = size(noiseless_iris_section);
    for x = 1:rows
        for y = 1:columns
            if noiseless_iris_section(x,y) == 0
                resultant(x,y) = 255;
            else
                resultant(x,y) = 0;
            end
        end
    end
   resultant_rgb = cat(3, resultant, resultant, resultant);
   iris_actual =  (uint8(resultant_rgb)) * noise_removal_sample; 
end

