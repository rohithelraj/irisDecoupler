[iris_actual_nopupil,img_name] = imageDataLoader('with Limbal Ring',1);
%Source - Matlab : https://de.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.html
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
ab = lab_iris_actual_nopupil(:,:,2:3);
cd=ab;
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);
nColors = 3;
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
% figure,imshow(pixel_labels,[]), title('image labeled by cluster index');
segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = iris_actual_nopupil;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end

figure,imshow(segmented_images{1});
figure,imshow(segmented_images{2});
figure,imshow(segmented_images{3});
% figure,imshow(segmented_images{4}), title('objects in cluster 4');  
% figure,imshow(segmented_images{5}), title('objects in cluster 5');
% figure,imshow(segmented_images{6}), title('objects in cluster 6');
% figure,imshow(segmented_images{7}), title('objects in cluster 7');
% figure,imshow(segmented_images{8}), title('objects in cluster 8');
figure,imshow(iris_actual_nopupil), title('Actual Image');
title(sprintf('Iris Trace: with Limbal Ring \n %s ',img_name));

