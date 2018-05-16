function sample_image = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   Function for loading sample data from file explorer

    switch type
        case 'no Limbal Ring'
            switch sample_number
                case 1
                    sample_image = iread('SampleData\No_LimbalRing\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.jpg');
                case 2
                    sample_image = iread('SampleData\No_LimbalRing\M970076 (V3)withmultipleFlecksNevi.jpg');
                case 3
                    sample_image = iread('SampleData\No_LimbalRing\M762477 (V3)multipleStarburstsWithinhibitedwithweakambergradient.jpg');
                case 4
                    sample_image = iread('SampleData\No_LimbalRing\M191358 (V3)withflecksnevi.jpg');          
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'no collarette with limbal ring'
             switch sample_number
                case 1
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M352114 (V3)withFlecksNeviInhibitWeakamberGradient.jpg');
                case 2
                    sample_image = iread('SampleData\NoCollorateSNPatAll\M164039 (V3).jpg');
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
             end
        case 'with Limbal Ring'     
            switch sample_number
                case 1
                    sample_image = iread('SampleData\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
                case 2
                    sample_image = iread('SampleData\M193239 (V3)withflecksneviamber.jpg');
                case 3
                    sample_image = iread('SampleData\M623148 (V3).jpg');
                case 4
                    sample_image = iread('SampleData\M865571 (V3).jpg');
                case 5
                    sample_image = iread('SampleData\M901542 (V3)withFlecksNEvi.jpg');
                case 6
                    sample_image = iread('SampleData\M891916 (V3)multipleStarburstswithinhibitedAmbientGradient.jpg');           
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        case 'without Limbal Ring and collorate' 
            switch sample_number
                case 1
                    sample_image = iread('SampleData\noCollorateSNP_noLimbalRing\M880636 (V3).jpg');
                otherwise
                    disp('Invalid Sample number in imageDataLoader->'+type);
            end
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

