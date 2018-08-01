function [sample_image, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Summary of this function goes here
%   install Robotics toolbox 10.2
%   Then Machine vision Toolbox 4.1

    switch type
        case 'with flecks'
            switch sample_number
                case 1
                    image = load('SampleInput\with_flecks_nevi\M142748 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');
                    image_name = 'M142748 (V3)withflecksnevi';
                case 2
                    image = load('SampleInput\with_flecks_nevi\M144342 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M144342 (V3)withFlecksNevi';
                case 3
                    image = load('SampleInput\with_flecks_nevi\M163349 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M163349 (V3)withFlecksNevi';
                case 4
                    image = load('SampleInput\with_flecks_nevi\M191358 (V3)withflecksnevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M191358 (V3)withflecksnevi';
                case 5
                    image = load('SampleInput\with_flecks_nevi\M193239 (V3)withflecksneviamber.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 6
                    image = load('SampleInput\with_flecks_nevi\M901542 (V3)withFlecksNEvi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 7
                    image = load('SampleInput\with_flecks_nevi\M970076 (V3)withmultipleFlecksNevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M970076 (V3)withmultipleFlecksNevi';
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
            end
        case 'without flecks'
             switch sample_number
                case 1
                    image = load('SampleInput\without_flecks_nevi\M164039 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M164039 (V3)';
                case 2
                    image = load('SampleInput\without_flecks_nevi\M275143 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M275143 (V3)';
                case 3
                    image = load('SampleInput\without_flecks_nevi\M623148 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M623148 (V3)';
                case 4
                    image = load('SampleInput\without_flecks_nevi\M865571 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M865571 (V3)';
                case 5
                    image = load('SampleInput\without_flecks_nevi\M880636 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M880636 (V3)';
                                
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
             end
        
            
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

