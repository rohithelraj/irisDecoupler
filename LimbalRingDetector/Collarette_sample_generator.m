image = load('Sample_inputs\collarate_processing_sample\M193239.mat');
sample_image = getfield(image, 'result');
[rows,columns,noChannels] = size(sample_image);
collarette_amber = sample_image;
for x = 1:rows
        for y = 1:columns
            if sample_image(x,y,1) < 110
                collarette_amber(x,y,1) = 0;
                collarette_amber(x,y,2) = 0;
                collarette_amber(x,y,3) = 0;
            end
            if((sample_image(x,y,2) > sample_image(x,y,1)))||(sample_image(x,y,3) > sample_image(x,y,1))
                collarette_amber(x,y,1) = 0;
                collarette_amber(x,y,2) = 0;
                collarette_amber(x,y,3) = 0;            
            end
            if((sample_image(x,y,2) > 105))||(sample_image(x,y,3) > 105)
                collarette_amber(x,y,1) = 0;
                collarette_amber(x,y,2) = 0;
                collarette_amber(x,y,3) = 0;            
            end
            if((sample_image(x,y,1) < 112))
                collarette_amber(x,y,1) = 0;
                collarette_amber(x,y,2) = 0;
                collarette_amber(x,y,3) = 0;            
            end
            if((sample_image(x,y,1) > 112))
                if((sample_image(x,y,3) > 100))
                    collarette_amber(x,y,1) = 0;
                    collarette_amber(x,y,2) = 0;
                    collarette_amber(x,y,3) = 0;            
                end         
            end
        end 
end
 collarette_amber = rgb2gray(collarette_amber);   
 collarette_amber = im2bw(collarette_amber,0.1);