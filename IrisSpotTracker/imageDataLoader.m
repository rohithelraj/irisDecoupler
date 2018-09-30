function [sample_image, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name] = imageDataLoader(type,sample_number)
%IMAGEDATALOADER Used to load sample data from the source folder.
%   Arguments: type-> accepts strings 'with flecks','without flecks'.
%                     Describes the sample containing a specific phenotype, in this with or without flecks.
%              sample_number -> numeric value for 'with flecks'; 1 to 12 works, for 'without flecks'; 1 to 12 works.
%   Returns: sample_image -> the sample image in RGB.
%            image_name -> the name of the image.
%            section_limbalRing -> the section of iris where Limbal ring is to be found.
%            section_flecks -> the section of iris where Flecks is to be found.
%            section_collarette -> the section of iris where collarette is to be found.
%            section_stroma -> the section of iris where contrasting sphincter is to be found is to be found.

    switch type
        case 'with flecks'
            switch sample_number
                case 1
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M142748 (V3)withflecksnevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');
                    image_name = 'M142748 (V3)withflecksnevi';
                case 2
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M144342 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M144342 (V3)withFlecksNevi';
                case 3
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M163349 (V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M163349 (V3)withFlecksNevi';
                case 4
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M191358 (V3)withflecksnevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M191358 (V3)withflecksnevi';
                case 5
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M193239 (V3)withflecksneviamber.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M193239 (V3)withflecksneviamber';
                case 6
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M901542 (V3)withFlecksNEvi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M901542 (V3)withFlecksNEvi';
                case 7
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M970076 (V3)withmultipleFlecksNevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M970076 (V3)withmultipleFlecksNevi';
                case 8
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M100902(V3)withFlecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');
                    image_name = 'M100902(V3)withFlecksNevi';
                case 9
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M124950 (V3)withclearflecksNevi.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M124950 (V3)withclearflecksNevi';
                case 10
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M331051 (V3)withFlecksNeviInhibitsWeakAmberGradient';
                case 11
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M372837 (V3)multipleFlexNevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M372837 (V3)multipleFlexNevi';
                case 12
                    image = load('SampleInputSpotTrack\with_flecks_nevi\M546190 (V3)multipleFlecksNevi.mat'); 
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M546190 (V3)multipleFlecksNevi';
               
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
            end
        case 'without flecks'
             switch sample_number
                case 1
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M164039 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M164039 (V3)';
                case 2
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M275143 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M275143 (V3)';
                case 3
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M623148 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M623148 (V3)';
                case 4
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M865571 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M865571 (V3)';
                case 5
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M880636 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M880636 (V3)';
                case 6
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M571583 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M571583 (V3)';
                case 7
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M545431 (V3)withinhibitweakamberGradient.mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M545431 (V3)withinhibitweakamberGradient';
                case 8
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M469379 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M469379 (V3)';
                case 9
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M353214 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M353214 (V3)';
                case 10
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M264023 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M264023 (V3)';    
                case 11
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M221159 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M221159 (V3)';
                case 12
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M204249 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M204249 (V3)';
                case 13
                    image = load('SampleInputSpotTrack\without_flecks_nevi\M198126 (V3).mat');
                    sample_image = getfield(image, 'sample_image');
                    section_limbalRing = getfield(image, 'section_limbalRing');
                    section_flecks = getfield(image, 'section_flecks');
                    section_collarette = getfield(image, 'section_collarette');
                    section_stroma = getfield(image, 'section_stroma');                   
                    image_name = 'M198126 (V3)';                      
                                
                otherwise
                    sprintf('Invalid Sample number in imageDataLoader-> %s'+type);
             end
        
            
        otherwise
            disp('Invalid Type in imageDataLoader'); 
    end

end

