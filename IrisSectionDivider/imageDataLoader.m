function [sample_image, image_name, iris_diameter, pupil_diameter] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   install Robotics toolbox 10.2
%   Then Machine vision Toolbox 4.1

    switch type
        case 'no Limbal Ring'
            switch sample_number
                case 1
                    image = load('Sample_inputs\no_Limbal_Ring\M154400 (V3)withFlecksNeviInhibitWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M154400 (V3)withFlecksNeviInhibitWeakAmberGradient';
                case 2
                    image = load('Sample_inputs\no_Limbal_Ring\M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient';
                case 3
                    image = load('Sample_inputs\no_Limbal_Ring\M191358 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M191358 (V3)withflecksnevi';
                case 4
                    image = load('Sample_inputs\no_Limbal_Ring\M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient.mat'); 
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'no collarette with limbal ring'
             switch sample_number
                case 1
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient';
                case 2
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M090800 (V3)withflecksneviinhibitedwithweakambergradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M090800 (V3)withflecksneviinhibitedwithweakambergradient';
                case 3
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M163349 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M163349 (V3)withFlecksNevi';
                case 4
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M164039 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M164039 (V3)';
                case 5
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M205029 (V3)withFlecksNeviInhibitedweakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M205029 (V3)withFlecksNeviInhibitedweakAmberGradient';
                case 6
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M352114 (V3)withFlecksNeviInhibitWeakamberGradient';
                case 7
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M483878 (V3)InhibitsWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M483878 (V3)InhibitsWeakAmberGradient';                    
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
             end
        case 'with Limbal Ring'     
            switch sample_number
                case 1
                    image = load('Sample_inputs\with_Limbal_Ring\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient';
                case 2
                    image = load('Sample_inputs\with_Limbal_Ring\M193239 (V3)withflecksneviamber.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 3
                    image = load('Sample_inputs\with_Limbal_Ring\M111443 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M111443 (V3)';
                case 4
                    image = load('Sample_inputs\with_Limbal_Ring\M865571 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M865571 (V3)';
                case 5
                    image = load('Sample_inputs\with_Limbal_Ring\M901542 (V3)withFlecksNEvi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 6
                    image = load('Sample_inputs\with_Limbal_Ring\M891916 (V3)multipleStarburstswithinhibitedAmbientGradient.mat');    
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M891916 (V3)multipleStarburstswithinhibitedAmbientGradient';
                case 7
                    image = load('Sample_inputs\with_Limbal_Ring\M623148 (V3).mat'); 
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M623148 (V3)';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'without Limbal Ring and collorate' 
            switch sample_number
                case 1
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M120918 (V3)withMultipleFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M120918 (V3)withMultipleFlecksNevi';
                case 2
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient';
                case 3
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M142748 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M142748 (V3)withflecksnevi';
                case 4
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M144342 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M144342 (V3)withFlecksNevi';
                case 5
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M275143 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M275143 (V3)';
                case 6
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient';
                case 7
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M880636 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M880636 (V3)';
                case 8
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M970076 (V3)withmultipleFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    image_name = 'M970076 (V3)withmultipleFlecksNevi';                    
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

