[sample_image_left, ~, section_flecks_left, section_collarette_left, section_stroma_left, image_name_left, ~,...
    sample_image_right, ~, section_flecks_right, section_collarette_right, section_stroma_right, image_name_right, ~] = imageDataLoader('complete heterochromia',4);

%Flags for types of heterochromia
completeHeterochromia = 0;
centralHeterochromia = 0;
sectoralHeterochromia = 0;

%detecting complete heterochromia.
[RGB_left_fullIris(1),RGB_left_fullIris(2), RGB_left_fullIris(3), Total_left_fullIris , count_left_fullIris] = ImageRGBColorAverageFinder(sample_image_left);
[RGB_right_fullIris(1),RGB_right_fullIris(2), RGB_right_fullIris(3), Total_right_fullIris, count_right_fullIris] = ImageRGBColorAverageFinder(sample_image_right);
intensity_diff = abs(Total_right_fullIris - Total_left_fullIris);
if(intensity_diff > 100)
    disp('Complete Heterochromia detected.');
    completeHeterochromia = 1;

else
    disp('Complete Heterochromia not detected.');
end
if(completeHeterochromia == 0)
    %detecting central heterochromia.
    [RGB_collarette(1),RGB_collarette(2), RGB_collarette(3), Total_collarette , count_collarette] = ImageRGBColorAverageFinder(section_collarette_left);
    [RGB_flecks(1),RGB_flecks(2), RGB_flecks(3), Total_flecks, count_flecks] = ImageRGBColorAverageFinder(section_flecks_left);
    intensity_diff_R = abs(RGB_collarette(1) - RGB_flecks(1));
    intensity_diff_G = abs(RGB_collarette(2) - RGB_flecks(2));
    intensity_diff_B = abs(RGB_collarette(3) - RGB_flecks(3));
    if((intensity_diff_R > 19)||(intensity_diff_G > 19)||(intensity_diff_B > 19))
        disp('Central Heterochromia detected.');
        centralHeterochromia = 1;
    else
        disp('Central Heterochromia not detected.');
    end
    %detecting sectoral heterochromia.
end

 
