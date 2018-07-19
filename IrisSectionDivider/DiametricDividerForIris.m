[sample_image, image_name, iris_diameter, pupil_diameter, pos_pupil, pos_iris] = imageDataLoader('no collarette with limbal ring',2);


%For Limbal Ring Region.


limbal_section_diameter_inner = iris_diameter - 30;
position_limbal = 15;
figure,imshow(sample_image);
hEllipse_limbal_in = imellipse(gca,[(pos_iris(1)+position_limbal) (pos_iris(2)+position_limbal) limbal_section_diameter_inner limbal_section_diameter_inner]);
binaryImage_limbal_in = hEllipse_limbal_in.createMask();
binaryImage_limbal_in_compl = imcomplement(binaryImage_limbal_in);
rgbImage_limbal_in = cat(3, binaryImage_limbal_in_compl, binaryImage_limbal_in_compl, binaryImage_limbal_in_compl);
limbal_actual_in =  (uint8(rgbImage_limbal_in)*255) + sample_image;
[rows,columns,noChannels] = size(sample_image);
limbal_actual_actual =  sample_image;
limbal_actual_actual(:,:,:) = 255; 

    for x = 1:rows
        for y = 1:columns
            if ~(sample_image(x,y,1) == 255 && sample_image(x,y,2) == 255 && sample_image(x,y,3) == 255)
                if ~(limbal_actual_in(x,y,1) == 255 && limbal_actual_in(x,y,2) == 255 && limbal_actual_in(x,y,3) == 255)
                    limbal_actual_actual(x,y,:) = 255;
                elseif (limbal_actual_in(x,y,1) == 255 && limbal_actual_in(x,y,2) == 255 && limbal_actual_in(x,y,3) == 255)
                    limbal_actual_actual(x,y,:) = sample_image(x,y,:);
                
                end
            end
        end 
    end
%Limbal Ring detection area.





%For Flecks Region.
flecks_area_diameter_outer = iris_diameter - 70;
pos_flecks = 35;
figure,imshow(sample_image);
hEllipse_flecks_in = imellipse(gca,[(pos_iris(1)+pos_flecks) (pos_iris(2)+pos_flecks) flecks_area_diameter_outer flecks_area_diameter_outer]);
binaryImage_flecks_in = hEllipse_flecks_in.createMask();
binaryImage_flecks_in_compl = imcomplement(binaryImage_flecks_in);
rgbImage_flecks_in = cat(3, binaryImage_flecks_in_compl, binaryImage_flecks_in_compl, binaryImage_flecks_in_compl);
flecks_actual_in =  (uint8(rgbImage_flecks_in)*255) + sample_image;
[rows,columns,noChannels] = size(sample_image);
flecks_actual_actual =  sample_image;
flecks_actual_actual(:,:,:) = 255; 

    for x = 1:rows
        for y = 1:columns
            if ~(sample_image(x,y,1) == 255 && sample_image(x,y,2) == 255 && sample_image(x,y,3) == 255)
                if ~(flecks_actual_in(x,y,1) == 255 && flecks_actual_in(x,y,2) == 255 && flecks_actual_in(x,y,3) == 255)
                    flecks_actual_actual(x,y,:) = 255;
                elseif (flecks_actual_in(x,y,1) == 255 && flecks_actual_in(x,y,2) == 255 && flecks_actual_in(x,y,3) == 255)
                    flecks_actual_actual(x,y,:) = sample_image(x,y,:);
                end
                if ~(limbal_actual_actual(x,y,1) == 255 && limbal_actual_actual(x,y,2) == 255 && limbal_actual_actual(x,y,3) == 255)
                    flecks_actual_actual(x,y,:) = 255;
                
                end
            end
        end 
    end
    
    %For Collarette Region.
collarette_section_diameter = iris_diameter - 110;
pos_collarette = 55;
figure,imshow(sample_image);
hEllipse_collarette_in = imellipse(gca,[(pos_iris(1)+pos_collarette) (pos_iris(2)+pos_collarette) collarette_section_diameter collarette_section_diameter]);
binaryImage_collarette_in = hEllipse_flecks_in.createMask();
binaryImage_collarette_in_compl = imcomplement(binaryImage_flecks_in);
rgbImage_collarette_in = cat(3, binaryImage_collarette_in_compl, binaryImage_collarette_in_compl, binaryImage_collarette_in_compl);
collarette_actual_in =  (uint8(rgbImage_collarette_in)*255) + sample_image;
[rows,columns,noChannels] = size(sample_image);
collarette_actual_actual =  sample_image;
collarette_actual_actual(:,:,:) = 255; 

    