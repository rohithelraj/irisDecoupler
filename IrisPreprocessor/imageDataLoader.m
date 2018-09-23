function [sample_image, image_name] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   Function for loading sample data from file explorer

    switch type
        case 'no Limbal Ring'
            switch sample_number


                case 1
                    sample_image = iread('SampleData\No_LimbalRing\M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient.jpg');
                    image_name = 'M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient';
                case 2
                    sample_image = iread('SampleData\No_LimbalRing\M191358 (V3)withflecksnevi.jpg');          
                    image_name = 'M191358 (V3)withflecksnevi';
                case 3
                    sample_image = iread('SampleData\No_LimbalRing\M154400 (V3)withFlecksNeviInhibitWeakAmberGradient.jpg');          
                    image_name = 'M154400 (V3)withFlecksNeviInhibitWeakAmberGradient';  
                case 4
                    sample_image = iread('SampleData\No_LimbalRing\M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient.jpg');           
                    image_name = 'M180146 (V3)multipleStarburstsWithinhibitedWeakAmberGradient';                     
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'no collarette with limbal ring'
             switch sample_number
                case 1
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.jpg');
                    image_name = 'M352114 (V3)withFlecksNeviInhibitWeakamberGradient';
                case 2
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M164039 (V3).jpg');
                    image_name = 'M164039 (V3)';
                case 3
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M090800 (V3)withflecksneviinhibitedwithweakambergradient.jpg');
                    image_name = 'M090800 (V3)withflecksneviinhibitedwithweakambergradient';  
                case 4
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient.jpg');
                    image_name = 'M071009 (V3)withFlecksNeviInhibitedwithweakambientgradient';  
                case 5
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M163349 (V3)withFlecksNevi.jpg');
                    image_name = 'M163349 (V3)withFlecksNevi';  
                case 6
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M205029 (V3)withFlecksNeviInhibitedweakAmberGradient.jpg');
                    image_name = 'M205029 (V3)withFlecksNeviInhibitedweakAmberGradient';        
                case 7
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M483878 (V3)InhibitsWeakAmberGradient.jpg');
                    image_name = 'M483878 (V3)InhibitsWeakAmberGradient';         
                case 8
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M587800 (V4).jpg');
                    image_name = 'M587800 (V4)';                                           
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
             end
        case 'with Limbal Ring'     
            switch sample_number
                case 1
                    sample_image = iread('SampleData\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
                    image_name = 'M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient';
                case 2
                    sample_image = iread('SampleData\M193239 (V3)withflecksneviamber.jpg');
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 3
                    sample_image = iread('SampleData\M623148 (V3).jpg');
                    image_name = 'M623148 (V3)';
                case 4
                    sample_image = iread('SampleData\M865571 (V3).jpg');
                    image_name = 'M865571 (V3)';
                case 5
                    sample_image = iread('SampleData\M901542 (V3)withFlecksNEvi.jpg');
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 6
                    sample_image = iread('SampleData\M891916 (V3)multipleStarburstswithinhibitedAmbientGradient.jpg');           
                    image_name = 'M891916 (V3)multipleStarburstswithinhibitedAmbientGradient';
                case 7
                    sample_image = iread('SampleData\M111443 (V3).jpg');           
                    image_name = 'M111443 (V3)';  
           
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'without Limbal Ring and collorate' 
            switch sample_number
                case 1
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M880636 (V3).jpg');
                    image_name = 'M880636 (V3)';
                case 2
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M970076 (V3)withmultipleFlecksNevi.jpg');
                    image_name = 'M970076 (V3)withmultipleFlecksNevi'; 
                case 3
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.jpg');
                    image_name = 'M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient';
                case 4
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M120918 (V3)withMultipleFlecksNevi.jpg');
                    image_name = 'M120918 (V3)withMultipleFlecksNevi';
                case 5
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M142748 (V3)withflecksnevi.jpg');
                    image_name = 'M142748 (V3)withflecksnevi';   
                case 6
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M144342 (V3)withFlecksNevi.jpg');
                    image_name = 'M144342 (V3)withFlecksNevi';       
                case 7
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M275143 (V3).jpg');
                    image_name = 'M275143 (V3)';  
                case 8
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient.jpg');
                    image_name = 'M450776 (V3)withFlecksNeviwithInhibitWeakAmberGradient';                     
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
          case 'contrasting sphincter' 
            switch sample_number
                case 1
                    sample_image = iread('SampleData\sphincterContrasting\M100902(V3)withFlecksNevi.jpg');
                    image_name = 'M100902(V3)withFlecksNevi';
                case 2
                    sample_image = iread('SampleData\sphincterContrasting\M124950 (V3)withclearflecksNevi.jpg');
                    image_name = 'M124950 (V3)withclearflecksNevi'; 
                case 3
                    sample_image = iread('SampleData\sphincterContrasting\M198126 (V3).jpg');
                    image_name = 'M198126 (V3)';
                case 4
                    sample_image = iread('SampleData\sphincterContrasting\M204249 (V3).jpg');
                    image_name = 'M204249 (V3)';   
                case 5
                    sample_image = iread('SampleData\sphincterContrasting\M221159 (V3).jpg');
                    image_name = 'M221159 (V3)';       
                case 6
                    sample_image = iread('SampleData\sphincterContrasting\M264023 (V3).jpg');
                    image_name = 'M264023 (V3)';  
                case 7
                    sample_image = iread('SampleData\sphincterContrasting\M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient.jpg');
                    image_name = 'M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient';
                case 8
                    sample_image = iread('SampleData\sphincterContrasting\M372837 (V3)multipleFlexNevi.jpg');
                    image_name = 'M372837 (V3)multipleFlexNevi'; 
                case 9
                    sample_image = iread('SampleData\sphincterContrasting\M469379 (V3).jpg');
                    image_name = 'M469379 (V3)';
                case 10
                    sample_image = iread('SampleData\sphincterContrasting\M353214 (V3).jpg');
                    image_name = 'M353214 (V3)';       
                case 11
                    sample_image = iread('SampleData\sphincterContrasting\M546190 (V3)multipleFlecksNevi.jpg');
                    image_name = 'M546190 (V3)multipleFlecksNevi';  
                case 12
                    sample_image = iread('SampleData\sphincterContrasting\M571583 (V3).jpg');
                    image_name = 'M571583 (V3)';
                case 13
                    sample_image = iread('SampleData\sphincterContrasting\M545431 (V3)withinhibitweakamberGradient.jpg');
                    image_name = 'M545431 (V3)withinhibitweakamberGradient'; 
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end  
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

