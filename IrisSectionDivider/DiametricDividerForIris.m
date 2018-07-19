[sample_image, image_name, iris_diameter, pupil_diameter] = imageDataLoader('no Limbal Ring',1);
%For Limbal Ring Region.
limbal_section_diameter_inner = iris_diameter - 10;

rgbImage_pupil = cat(3, pupil, pupil, pupil);
%For Collarette Region.
collarette_section_diameter_outer = iris_diameter - 20;
collarette_section_diameter_inner = pupil_diameter + 10;
%For Flecks Region.
flecks_area_diameter_outer = limbal_section_diameter_inner;
flecks_area_diameter_inner = collarette_section_diameter_outer;