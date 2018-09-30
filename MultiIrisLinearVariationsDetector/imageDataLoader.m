function [sample_image_left, section_limbalRing_left, section_flecks_left, section_collarette_left, section_stroma_left, image_name_left, pupil_diameter_left,...
    sample_image_right, section_limbalRing_right, section_flecks_right, section_collarette_right, section_stroma_right, image_name_right, pupil_diameter_right] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Used to load sample data from the source folder.
%   Arguments: type-> accepts strings 'anisocoria','complete heterochromia'.
%                     Describes the sample containing a specific phenotype, in this with or without flecks.
%              sample_number -> numeric value for 'anisocoria'; 1 works, for 'complete heterochromia'; 1 to 4 works.
%   Returns: sample_image_left -> the sample image in RGB.
%            image_name_left -> the name of the image.
%            section_limbalRing_left -> the section of iris where Limbal ring is to be found.
%            section_flecks_left -> the section of iris where Flecks is to be found.
%            section_collarette_left -> the section of iris where collarette is to be found.
%            section_stroma_left -> the section of iris where contrasting sphincter is to be found is to be found.
%            pupil_diameter_left -> the pupil_diameter_left of iris gives the diametric value of the pupil.
%            sample_image_right -> the sample image in RGB.
%            image_name_right -> the name of the image.
%            section_limbalRing_right -> the section of iris where Limbal ring is to be found.
%            section_flecks_right -> the section of iris where Flecks is to be found.
%            section_collarette_right -> the section of iris where collarette is to be found.
%            section_stroma_right -> the section of iris where contrasting sphincter is to be found is to be found.
%            pupil_diameter_right -> the pupil_diameter_left of iris gives the diametric value of the pupil.
    switch type
        case 'anisocoria'
            switch sample_number
                case 1

                    image_left = load('SampleInputMultiIrisProp\Left\M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient.mat');
                    sample_image_left = getfield(image_left, 'sample_image');
                    section_limbalRing_left = getfield(image_left, 'section_limbalRing');
                    section_flecks_left = getfield(image_left, 'section_flecks');
                    section_collarette_left = getfield(image_left, 'section_collarette');
                    section_stroma_left = getfield(image_left, 'section_stroma');
                    pupil_diameter_left = getfield(image_left, 'pupil_diameter');
                    image_name_left = 'M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient';
                    image_right = load('SampleInputMultiIrisProp\Right\M163349 (V3)withFlecksNevi.mat');
                    sample_image_right = getfield(image_right, 'sample_image');
                    section_limbalRing_right = getfield(image_right, 'section_limbalRing');
                    section_flecks_right = getfield(image_right, 'section_flecks');
                    section_collarette_right = getfield(image_right, 'section_collarette');
                    section_stroma_right = getfield(image_right, 'section_stroma');
                    image_name_right = 'M163349 (V3)withFlecksNevi';
                    pupil_diameter_right = getfield(image_right, 'pupil_diameter');
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
             end
        case 'complete heterochromia'     
            switch sample_number
                case 1
                    image_left = load('SampleInputMultiIrisProp\Left\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.mat');
                    sample_image_left = getfield(image_left, 'sample_image');
                    section_limbalRing_left = getfield(image_left, 'section_limbalRing');
                    section_flecks_left = getfield(image_left, 'section_flecks');
                    section_collarette_left = getfield(image_left, 'section_collarette');
                    section_stroma_left = getfield(image_left, 'section_stroma');
                     pupil_diameter_left = getfield(image_left, 'pupil_diameter');
                    image_name_left = 'M352114 (V3)withFlecksNeviInhibitWeakamberGradient';
                    image_right = load('SampleInputMultiIrisProp\Right\M483878 (V3)InhibitsWeakAmberGradient.mat');
                    sample_image_right = getfield(image_right, 'sample_image');
                    section_limbalRing_right = getfield(image_right, 'section_limbalRing');
                    section_flecks_right = getfield(image_right, 'section_flecks');
                    section_collarette_right = getfield(image_right, 'section_collarette');
                    section_stroma_right = getfield(image_right, 'section_stroma');
                    image_name_right = 'M483878 (V3)InhibitsWeakAmberGradient';
                     pupil_diameter_right = getfield(image_right, 'pupil_diameter');
                case 2
                    image_left = load('SampleInputMultiIrisProp\Left\M901542 (V3)withFlecksNEvi.mat');
                    sample_image_left = getfield(image_left, 'sample_image');
                    section_limbalRing_left = getfield(image_left, 'section_limbalRing');
                    section_flecks_left = getfield(image_left, 'section_flecks');
                    section_collarette_left = getfield(image_left, 'section_collarette');
                    section_stroma_left = getfield(image_left, 'section_stroma');
                     pupil_diameter_left = getfield(image_left, 'pupil_diameter');
                    image_name_left = 'M901542 (V3)withFlecksNEvi';
                    image_right = load('SampleInputMultiIrisProp\Right\M901542 (V3)withFlecksNEvi.mat');
                    sample_image_right = getfield(image_right, 'sample_image');
                    section_limbalRing_right = getfield(image_right, 'section_limbalRing');
                    section_flecks_right = getfield(image_right, 'section_flecks');
                    section_collarette_right = getfield(image_right, 'section_collarette');
                    section_stroma_right = getfield(image_right, 'section_stroma');
                    image_name_right = 'M901542 (V3)withFlecksNEvi';
                     pupil_diameter_right = getfield(image_right, 'pupil_diameter');
                case 3
                    image_left = load('SampleInputMultiIrisProp\Left\M144342 (V3)withFlecksNevi.mat');
                    sample_image_left = getfield(image_left, 'sample_image');
                    section_limbalRing_left = getfield(image_left, 'section_limbalRing');
                    section_flecks_left = getfield(image_left, 'section_flecks');
                    section_collarette_left = getfield(image_left, 'section_collarette');
                    section_stroma_left = getfield(image_left, 'section_stroma');
                     pupil_diameter_left = getfield(image_left, 'pupil_diameter');
                    image_name_left = 'M144342 (V3)withFlecksNevi';
                    image_right = load('SampleInputMultiIrisProp\Right\M144342 (V3)withFlecksNevi.mat');
                    sample_image_right = getfield(image_right, 'sample_image');
                    section_limbalRing_right = getfield(image_right, 'section_limbalRing');
                    section_flecks_right = getfield(image_right, 'section_flecks');
                    section_collarette_right = getfield(image_right, 'section_collarette');
                    section_stroma_right = getfield(image_right, 'section_stroma');
                    image_name_right = 'M144342 (V3)withFlecksNevi';
                     pupil_diameter_right = getfield(image_right, 'pupil_diameter');
                case 4
                    image_left = load('SampleInputMultiIrisProp\Left\M193239 (V3)withflecksneviamber.mat');
                    sample_image_left = getfield(image_left, 'sample_image');
                    section_limbalRing_left = getfield(image_left, 'section_limbalRing');
                    section_flecks_left = getfield(image_left, 'section_flecks');
                    section_collarette_left = getfield(image_left, 'section_collarette');
                    section_stroma_left = getfield(image_left, 'section_stroma');
                     pupil_diameter_left = getfield(image_left, 'pupil_diameter');
                    image_name_left = 'M193239 (V3)withflecksneviamber';
                    image_right = load('SampleInputMultiIrisProp\Right\M193239 (V3)withflecksneviamber.mat');
                    sample_image_right = getfield(image_right, 'sample_image');
                    section_limbalRing_right = getfield(image_right, 'section_limbalRing');
                    section_flecks_right = getfield(image_right, 'section_flecks');
                    section_collarette_right = getfield(image_right, 'section_collarette');
                    section_stroma_right = getfield(image_right, 'section_stroma');
                    image_name_right = 'M193239 (V3)withflecksneviamber';
                     pupil_diameter_right = getfield(image_right, 'pupil_diameter');
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
            end
    end

end

