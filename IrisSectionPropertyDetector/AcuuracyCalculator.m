function accuracy = AcuuracyCalculator(selectedRGB, comparedRGB, type)
%ACUURACYCALCULATOR calulates the accuracy of the results obtained by the
%calling IrirsPropertyDetector method.
%   Calculates the accuracy based on the RGB value of a selected segment
%   of an iris section and the RGB value of the compared iris section. A
%   monochrome comparison is followed by Red, Green, Blue channel based comparison respectively. 
    accuracy = 0;
    switch type
        case 'contrastingSphincter'
            difference = abs((transpose(selectedRGB))- comparedRGB);
            differ_elements = find(difference > 19);
            
            if (abs(sum (selectedRGB) - sum(comparedRGB))) > 70
                accuracy = 100;
            elseif(length(differ_elements) > 1)
                accuracy = 90;
            elseif(length(differ_elements) == 1)
                accuracy = 50;
            elseif(selectedRGB(1) > selectedRGB(2))
                if(selectedRGB(2) > selectedRGB(3))
                    
                    if((abs(selectedRGB(1) - selectedRGB(2))) > 20)&&((abs(selectedRGB(2) - selectedRGB(1))) >20)
                        %Brown color detected.
                        accuracy = 50;
                    end
                end    
            end
        case 'limbalRing'
            difference = abs((transpose(selectedRGB))- comparedRGB);
            differ_elements = find(difference > 26);
            
            if (abs(sum (selectedRGB) - sum(comparedRGB))) > 70
                accuracy = 100;
            elseif(length(differ_elements) > 1)
                accuracy = 90;
            elseif(length(differ_elements) == 1)
                accuracy = 50;
            elseif(selectedRGB(1) > selectedRGB(2))
                if(selectedRGB(2) > selectedRGB(3))
                    
                    if((abs(selectedRGB(1) - selectedRGB(2))) > 20)&&((abs(selectedRGB(2) - selectedRGB(1))) >20)
                        %Brown color detected.
                        accuracy = 50;
                    end
                end    
            end            
        otherwise
            sprintf('Invalid type value in AcuuracyCalculator-> %s'+type);
    end
    
end

