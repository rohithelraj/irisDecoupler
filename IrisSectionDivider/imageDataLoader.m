function [sample_image, image_name, iris_diameter, pupil_diameter, pos_pupil, pos_iris] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Used to load sample data from the source folder.
%   Arguments: type-> accepts strings 'no limbal Ring','no collarette with limbal ring', 'with Limbal Ring' , 'without Limbal Ring and collorate', 'contrasting sphincter'.
%                     Describes the sample containing a specific phenotype.
%               sample_number -> numeric value for 'no limbal Ring'; 1 to 4 works, for 'no collarette with limbal ring'; 1 to 8 works, for 'with Limbal Ring'; 1 to 7 works
%                               , for 'without Limbal Ring and collorate'; 1 to 8 works, , for 'contrasting sphincter'; 1 to 13 works.
%   Returns: sample_image -> the sample image in RGB.
%            image_name -> the name of the image.
%            iris_diameter -> the diameter of the iris.
%            pupil_diameter -> the diameter of the pupil.
%            pos_pupil -> the position of the pupil.
%            pos_iris -> the position of the iris.

    switch type
        case 'no Limbal Ring'
            switch sample_number
                case 1
                    image = load('Sample_inputs\no_Limbal_Ring\M154400 (V3)withFlecksNeviInhibitWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M154400 (V3)withFlecksNeviInhibitWeakAmberGradient';
                case 2
                    image = load('Sample_inputs\no_Limbal_Ring\M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient';
                case 3
                    image = load('Sample_inputs\no_Limbal_Ring\M191358 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M191358 (V3)withflecksnevi';
                case 4
                    image = load('Sample_inputs\no_Limbal_Ring\M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient.mat'); 
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
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
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient';
                case 2
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M090800 (V3)withflecksneviinhibitedwithweakambergradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M090800 (V3)withflecksneviinhibitedwithweakambergradient';
                case 3
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M163349 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M163349 (V3)withFlecksNevi';
                case 4
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M164039 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M164039 (V3)';
                case 5
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M205029 (V3)withFlecksNeviInhibitedweakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M205029 (V3)withFlecksNeviInhibitedweakAmberGradient';
                case 6
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M352114 (V3)withFlecksNeviInhibitWeakamberGradient';
                case 7
                    image = load('Sample_inputs\no_collarette_with_limbal_ring\M483878 (V3)InhibitsWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
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
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient';
                case 2
                    image = load('Sample_inputs\with_Limbal_Ring\M193239 (V3)withflecksneviamber.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 3
                    image = load('Sample_inputs\with_Limbal_Ring\M111443 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M111443 (V3)';
                case 4
                    image = load('Sample_inputs\with_Limbal_Ring\M865571 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M865571 (V3)';
                case 5
                    image = load('Sample_inputs\with_Limbal_Ring\M901542 (V3)withFlecksNEvi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 6
                    image = load('Sample_inputs\with_Limbal_Ring\M891916 (V3)multipleStarburstswithinhibitedAmbientGradient.mat');    
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M891916 (V3)multipleStarburstswithinhibitedAmbientGradient';
                case 7
                    image = load('Sample_inputs\with_Limbal_Ring\M623148 (V3).mat'); 
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M623148 (V3)';
                case 8
                    image = load('Sample_inputs\with_Limbal_Ring\M587800 (V4).mat'); 
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M587800 (V4)';                    
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
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M120918 (V3)withMultipleFlecksNevi';
                case 2
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient';
                case 3
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M142748 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M142748 (V3)withflecksnevi';
                case 4
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M144342 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M144342 (V3)withFlecksNevi';
                case 5
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M275143 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M275143 (V3)';
                case 6
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient';
                case 7
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M880636 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M880636 (V3)';
                case 8
                    image = load('Sample_inputs\without_Limbal_Ring_and_collorate\M970076 (V3)withmultipleFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');                    
                    image_name = 'M970076 (V3)withmultipleFlecksNevi';                    
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'contrasting sphincter' 
            switch sample_number
                case 1
                    image = load('Sample_inputs\sphincterContrasting\M100902(V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M100902(V3)withFlecksNevi';
                case 2
                    image = load('Sample_inputs\sphincterContrasting\M124950 (V3)withclearflecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M124950 (V3)withclearflecksNevi'; 
                case 3
                    image = load('Sample_inputs\sphincterContrasting\M198126 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M198126 (V3)';
                case 4
                    image = load('Sample_inputs\sphincterContrasting\M204249 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M204249 (V3)';   
                case 5
                    image = load('Sample_inputs\sphincterContrasting\M221159 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M221159 (V3)';       
                case 6
                    image = load('Sample_inputs\sphincterContrasting\M264023 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M264023 (V3)';  
                case 7
                    image = load('Sample_inputs\sphincterContrasting\M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient';
                case 8
                    image = load('Sample_inputs\sphincterContrasting\M372837 (V3)multipleFlexNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M372837 (V3)multipleFlexNevi'; 
                case 9
                    image = load('Sample_inputs\sphincterContrasting\M469379 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M469379 (V3)';
                case 10
                    image = load('Sample_inputs\sphincterContrasting\M353214 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M353214 (V3)';       
                case 11
                    image = load('Sample_inputs\sphincterContrasting\M546190 (V3)multipleFlecksNevi.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M546190 (V3)multipleFlecksNevi';  
                case 12
                    image = load('Sample_inputs\sphincterContrasting\M571583 (V3).mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M571583 (V3)';
                case 13
                    image = load('Sample_inputs\sphincterContrasting\M545431 (V3)withinhibitweakamberGradient.mat');
                    sample_image = getfield(image, 'clean_iris_no_pupil');
                    iris_diameter = getfield(image, 'box_side_iris');
                    pupil_diameter = getfield(image, 'box_side');
                    pos_pupil = getfield(image, 'result');
                    pos_iris = getfield(image, 'result_iris');
                    image_name = 'M545431 (V3)withinhibitweakamberGradient'; 
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end            
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

