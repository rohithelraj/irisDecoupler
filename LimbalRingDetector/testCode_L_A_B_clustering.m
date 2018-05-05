%Source: MATLAB : https://de.mathworks.com/help/images/examples/color-based-segmentation-using-the-l-a-b-color-space.html#d119e2715
load regioncoordinates;

nColors = 6;
sample_regions = false([size(iris_actual_nopupil,1) size(iris_actual_nopupil,2) nColors]);

for count = 1:nColors
  sample_regions(:,:,count) = roipoly(iris_actual_nopupil,region_coordinates(:,1,count),...
                                      region_coordinates(:,2,count));
end

imshow(sample_regions(:,:,2)),title('sample region for red');
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
a = lab_iris_actual_nopupil(:,:,2);
b = lab_iris_actual_nopupil(:,:,3);
color_markers = zeros([nColors, 2]);

for count = 1:nColors
  color_markers(count,1) = mean2(a(sample_regions(:,:,count)));
  color_markers(count,2) = mean2(b(sample_regions(:,:,count)));
end
fprintf('[%0.3f,%0.3f] \n',color_markers(2,1),color_markers(2,2))
color_labels = 0:nColors-1;
a = double(a);
b = double(b);
distance = zeros([size(a), nColors]);
for count = 1:nColors
  distance(:,:,count) = ( (a - color_markers(count,1)).^2 + ...
                      (b - color_markers(count,2)).^2 ).^0.5;
end

[~, label] = min(distance,[],3);
label = color_labels(label);
clear distance;
rgb_label = repmat(label,[1 1 3]);
segmented_images = zeros([size(iris_actual_nopupil), nColors],'uint8');

for count = 1:nColors
  color = iris_actual_nopupil;
  color(rgb_label ~= color_labels(count)) = 0;
  segmented_images(:,:,:,count) = color;
end 

figure,imshow(segmented_images(:,:,:,2)), title('red objects');
figure,imshow(segmented_images(:,:,:,3)), title('green objects');
figure,imshow(segmented_images(:,:,:,4)), title('purple objects');
figure,imshow(segmented_images(:,:,:,5)), title('magenta objects');
figure,imshow(segmented_images(:,:,:,6)), title('yellow objects');
purple = [119/255 73/255 152/255];
plot_labels = {'k', 'r', 'g', purple, 'm', 'y'};

figure
for count = 1:nColors
  plot(a(label==count-1),b(label==count-1),'.','MarkerEdgeColor', ...
       plot_labels{count}, 'MarkerFaceColor', plot_labels{count});
  hold on;
end
  
title('Scatterplot of the segmented pixels in ''a*b*'' space');
xlabel('''a*'' values');
ylabel('''b*'' values');