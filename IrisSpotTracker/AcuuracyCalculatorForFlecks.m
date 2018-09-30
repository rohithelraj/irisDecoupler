function accuracy = AcuuracyCalculatorForFlecks(possibleFlecksBlobs,FlecksRGBavg, type)
%ACUURACYCALCULATOR calulates the accuracy of the results obtained by the
% calling IrirsPropertyDetector method.
%   Calculates the accuracy based on the RGB value of a selected segment
%   of an iris section and the RGB value of the compared iris section. A
%   monochrome comparison is followed by Red, Green, Blue channel based comparison respectively. 
    accuracy = 0;
    switch type
        case 'flecks'
            bigBlobs = 0;
            blobAreas = [possibleFlecksBlobs.area];
            bigBlobs = find(blobAreas > 50);
            if(length(blobAreas) > 10)
                accuracy = 100/length(blobAreas);
            elseif(length(blobAreas) < 10)
                if (bigBlobs)
                    accuracy = 100/length(blobAreas);
                else
                    if (max(blobAreas) < 20)
                        accuracy = 40/length(blobAreas);
                    else
                        accuracy = 100/length(blobAreas);
                    end    
                    
                end
            end
            if(FlecksRGBavg(1) > FlecksRGBavg(2))
                if(FlecksRGBavg(2) > FlecksRGBavg(3))
                    
                    if((abs(FlecksRGBavg(1) - FlecksRGBavg(2))) > 20)&&((abs(FlecksRGBavg(2) - FlecksRGBavg(1))) >20)
                        %Brown color detected.
                        accuracy = 50;
                    end
                end 
            end
                    
        otherwise
            sprintf('Invalid type value in AcuuracyCalculatorForFlecks-> %s'+type);
    end
    
end

