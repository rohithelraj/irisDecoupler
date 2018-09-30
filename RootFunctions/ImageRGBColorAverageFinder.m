function [Ravg,Gavg, Bavg, Total, count] = ImageRGBColorAverageFinder(image)
%IMAGERGBCOLORAVERAGEFINDER  Finds the average RGB and Monochrome colour values for an image, excluding the dark pixels( zeros )
%   Arguments: image -> The input RGB image.
%   Return: Ravg -> The average Red value.
%           Gavg -> The average Blue value.
%           Bavg -> The average Green value.
%           Total -> The average Monochrome value.
%           count -> the count of non zero pixels.
    [rows,columns,noChannels] = size(image);
    if(noChannels == 3) 
        Ravg = double(0);
        Gavg = double(0);
        Bavg = double(0);
        count = 0;
        Total = double(0);
        for x = 1:rows
            for y = 1:columns
                if(~(image(x,y,1) == 255 && image(x,y,2) == 255 && image(x,y,3) == 255))&&(~(image(x,y,1) == 0 && image(x,y,2) == 0 && image(x,y,3) == 0))
                    Ravg = Ravg + double(image(x,y,1));
                    Gavg = Gavg + double(image(x,y,2));
                    Bavg = Bavg + double(image(x,y,3));
                    count = count + 1;
                end
            end 
        end
        if count > 10
            Ravg = Ravg / count;
            Gavg = Gavg / count;
            Bavg = Bavg / count;
            Total = Ravg + Gavg + Bavg;        
        end

    else
        sprintf('Invalid Input -> Not a three channel image.');
    end
end

