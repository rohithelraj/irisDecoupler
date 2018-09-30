function     [RCount ,GCount , BCount , MCount] = sectoralRGBMonoCountFinder(RGB_flecks,Total_flecks,image)
%SECTORALRGBMONOCOUNTFINDER Incomplete-------
        RCount = 0;
        GCount = 0;
        BCount = 0;
        MCount = 0;
        [rows,columns,noChannels] = size(image);
        for x = 1:rows
            for y = 1:columns
                if(~(image(x,y,1) == 255 && image(x,y,2) == 255 && image(x,y,3) == 255))&&(~(image(x,y,1) == 0 && image(x,y,2) == 0 && image(x,y,3) == 0))
                    if(abs(image(x,y,1)-RGB_flecks(1)) > 20)
                        RCount = RCount + 1;
                    end
                    if(abs(image(x,y,2)-RGB_flecks(2)) > 20)
                        GCount = GCount + 1;
                    end
                    if(abs(image(x,y,3)-RGB_flecks(3)) > 20)
                        BCount = BCount + 1;
                    end
                    if(abs(((image(x,y,1)+image(x,y,2)+image(x,y,3))-Total_flecks)/3) > 20)
                       MCount = MCount + 1; 
                    end
                    
                end
            end 
        end
end

