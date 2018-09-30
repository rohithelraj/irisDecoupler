function [resultant,iris_actual] = imageNoiseRemover(input_image,noiser)
    %IMAGENOISEREMOVER removes the noise from the iris image.
    %   Arguments: input_image -> Input iris image.
    %              noiser -> The sample image used for generating the noise removal mask, this image generates the noise mask at cluster 3, on performing
    %                        K- Means clusterning with k value 3 and iteration numer 3.
    %   Returns: resultant -> The monochrome noise mask.
    %            iris_actual -> The noise removed iris input, the final output of preprocessing.
    noise_removal_sample = noiser;

    lab_noise_removal_sample = rgb2lab(noise_removal_sample);
    %   Source used for k- means clustering - Matlab : https://de.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.htmllab_iris_actual_nopupil = rgb2lab(section_limbalRing);
    %Inspired by source- Start

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
    %Inspired by source- End
    noiseless_iris_section1 = segmented_images{1};
    noiseless_iris_section2 = segmented_images{2};
    noiseless_iris_section = rgb2gray(segmented_images{3});
    resultant = noiseless_iris_section;
    
    [rows,columns,noChannels] = size(noiseless_iris_section);
    for x = 1:rows
        for y = 1:columns
            if noiseless_iris_section(x,y) == 0
                resultant(x,y) = 1;
            else
                resultant(x,y) = 0;
            end
        end
    end
   %resultant_compl = imcomplement(resultant);
   resultant_lab_compl = cat(3, resultant, resultant, resultant);
  % resultant_rgb = lab2rgb(resultant_lab);
   %iris_actual = resultant_rgb;
   iris_actual =  resultant_lab_compl .* input_image; 
   iris_actual_mono = imono(iris_actual);
   [rows,columns,noChannels] = size(iris_actual_mono);
    for x = 1:rows
        for y = 1:columns
            if iris_actual_mono(x,y) == 0
                iris_actual(x,y,1) = 255;
                iris_actual(x,y,2) = 255;
                iris_actual(x,y,3) = 255;

            end
        end
    end
end

