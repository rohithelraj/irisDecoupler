    lab_noise_removal_sample = rgb2lab(clean_iris_no_pupil);
    %   Source used for k- means clustering - Matlab : https://de.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.htmllab_iris_actual_nopupil = rgb2lab(section_limbalRing);
    %Inspired by source- Start
    ab = lab_noise_removal_sample(:,:,2:3);
    cd=ab;
    nrows = size(ab,1);
    ncols = size(ab,2);
    ab = reshape(ab,nrows*ncols,2);
    nColors = 4;
    [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
    pixel_labels = reshape(cluster_idx,nrows,ncols);
    segmented_images = cell(1,4);
    rgb_label = repmat(pixel_labels,[1 1 3]);
    for k = 1:nColors
        color = clean_iris_no_pupil;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end
    %Inspired by source- End