function LimbalRing_flag = LimbalRingDetectorFn(section_limbalRing,section_flecks)
%LIMBALRINGDETECTORFN detects Limbal Ring in a provided section_limbalRing
%   Return: LimbalRing_flag -> Boolean variable that marks the existance of Limbal Ring in a Limbal Ring section.
%   Argument: section_limbalRing -> Limbal Ring section of an iris.
%             section_flecks -> Flecks section of an iris.
%   Source used for k- means clustering - Matlab : https://de.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.html

    LimbalRing_flag = 0;
    lab_iris_actual_nopupil = rgb2lab(section_limbalRing);
    %Inspired by source- Start
    ab = lab_iris_actual_nopupil(:,:,2:3);
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
        color = section_limbalRing;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end
    %Inspired by source- End
    [RGB1(1),RGB1(2), RGB1(3), Total1 , count1] = ImageRGBColorAverageFinder(segmented_images{1});
    [RGB2(1),RGB2(2), RGB2(3), Total2, count2] = ImageRGBColorAverageFinder(segmented_images{2});
    [RGB3(1),RGB3(2), RGB3(3), Total3, count3] = ImageRGBColorAverageFinder(segmented_images{3});
    [RGB(1),RGB(2), RGB(3), Total, count4] = ImageRGBColorAverageFinder(section_flecks);
    if(count1 > 20)
        if((abs(Total-Total1))>26)
            %disp('Limbal Ring Detected');
            LimbalRing_flag = 1;
        end
    end
    if(count2 > 20)
            if((abs(Total-Total2))>26)
                %disp('Limbal Ring Detected');
                LimbalRing_flag = 1;
            end
    end
    if(~LimbalRing_flag)
        
        if(count3 > 20)
            if((abs(Total-Total3))>26)
                %disp('Limbal Ring Detected');
                LimbalRing_flag = 1;
            else
                %disp('No Limbal Ring Detected');
                LimbalRing_flag = 0;
            end
        else
            %disp('No Limbal Ring Detected');
            LimbalRing_flag = 0;
        end
    end
end

