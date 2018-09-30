clc;
clear all;
% This main function is used to split the iris into limbal ring, flecks, collarette and stroma sections.
% It also retives the sample id, actual iris image, pupil diameter, pupil position and iris position.
[image_name, sample_image, iris_diameter, pupil_diameter, pos_pupil, pos_iris, section_limbalRing,...
 section_flecks, section_collarette, section_stroma] = irisSectionRetriever('contrasting sphincter',13);