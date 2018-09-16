function [sample_image_left, section_limbalRing_left, section_flecks_left, section_collarette_left, section_stroma_left, image_name_left, pupil_diameter_left,...
    sample_image_right, section_limbalRing_right, section_flecks_right, section_collarette_right, section_stroma_right, image_name_right, pupil_diameter_right] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   install Robotics toolbox 10.2
%   Then Machine vision Toolbox 4.1

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

