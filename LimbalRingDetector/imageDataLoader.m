function [sample_image, image_name] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   install Robotics toolbox 10.2
%   Then Machine vision Toolbox 4.1

    switch type
        case 'no Limbal Ring'
            switch sample_number
                case 1
                    sample_image = iread('Sample_inputs\no_Limbal_Ring\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.jpg');
                    image_name = 'M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient';
                case 2
                    sample_image = iread('Sample_inputs\no_Limbal_Ring\M970076 (V3)withmultipleFlecksNevi.jpg');
                    image_name = 'M970076 (V3)withmultipleFlecksNevi';
                case 3
                    sample_image = iread('Sample_inputs\no_Limbal_Ring\M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient.jpg');
                    image_name = 'M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient';
                case 4
                    sample_image = iread('Sample_inputs\no_Limbal_Ring\M191358 (V3)withflecksnevi.jpg');          
                    image_name = 'M191358 (V3)withflecksnevi';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'no collarette with limbal ring'
             switch sample_number
                case 1
                    sample_image = iread('Sample_inputs\no_collarette_with_limbal_ring\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.jpg');
                    image_name = 'M352114 (V3)withFlecksNeviInhibitWeakamberGradient';
                case 2
                    sample_image = iread('Sample_inputs\no_collarette_with_limbal_ring\M164039 (V3).jpg');
                    image_name = 'M164039 (V3)';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
             end
        case 'with Limbal Ring'     
            switch sample_number
                case 1
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
                    image_name = 'M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient';
                case 2
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M193239 (V3)withflecksneviamber.jpg');
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 3
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M623148 (V3).jpg');
                    image_name = 'M623148 (V3)';
                case 4
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M865571 (V3).jpg');
                    image_name = 'M865571 (V3)';
                case 5
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M901542 (V3)withFlecksNEvi.jpg');
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 6
                    sample_image = iread('Sample_inputs\with_Limbal_Ring\M891916 (V3)multipleStarburstswithinhibitedAmbientGradient.jpg');           
                    image_name = 'M891916 (V3)multipleStarburstswithinhibitedAmbientGradient';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'without Limbal Ring and collorate' 
            switch sample_number
                case 1
                    sample_image = iread('Sample_inputs\without_Limbal_Ring_and_collorate\M880636 (V3).jpg');
                    image_name = 'M880636 (V3)';
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

