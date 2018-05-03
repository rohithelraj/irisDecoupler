function iris = irisRetriever(edgeInput,pupil)
%IRISRETRIEVER Summary of this function goes here
%   Pupil Section of the Eye.
% (1,1)        (200,1)               (400,1)
%                |B|
%     |H|         |        |F|
%                 |
%-|D|------------Cent------------|C|-(400,99)
%                 |
%                 |
%     |E|        |A|       |G|
%                 |                 
% (1,200)     (201,200)              (400,200)
% Determining the outer rim of the iris.
%                     |
%                    |ß|
%    |L|         .    |             |z|
%                 .   |
%                 | . |
%            theta|  .|
%                 | . . .
%--|d|-------------.-----.--------------|r|---
%     radii_spatial . . .
%                     |
%                     |
%                     |
%    |€|              |             |n|
%                    |a|
%                     |

  iris = zeros(400,200);
  %centroid(1)-> Centroid(X)
  %centroid(2)-> Centroid(Y)
  pupil = transpose(pupil);
  edgeInput = transpose(edgeInput);
  centroid = [201 99];
  
  radii_spatial = 66;%Lateral distance between pupil and iris outer ring.
  for co_x = 1:400
    for co_y = 1:200
        if (pupil(co_x,co_y) == 1)
            if (co_x == centroid(1))
                if (co_y > centroid(2))%|A|
                    if(edgeInput(co_x,(co_y+radii_spatial)) == 1)
                        iris(co_x,(co_y+radii_spatial)) = 1;
                    elseif(edgeInput(co_x,(co_y+radii_spatial+1)) == 1)
                        iris(co_x,(co_y+radii_spatial+1)) = 1;
                    elseif(edgeInput(co_x,(co_y+radii_spatial-1)) == 1)
                        iris(co_x,(co_y+radii_spatial-1)) = 1;
                    end
                else%|B|
                    if(edgeInput(co_x,(co_y-radii_spatial)) == 1)
                        iris(co_x,(co_y-radii_spatial)) = 1;
                    elseif(edgeInput(co_x,(co_y-radii_spatial+1)) == 1)
                        iris(co_x,(co_y-radii_spatial+1)) = 1;
                    elseif(edgeInput(co_x,(co_y-radii_spatial-1)) == 1)
                        iris(co_x,(co_y-radii_spatial-1)) = 1;
                    end
                end
            elseif (co_y == centroid(2))
                if (co_x > centroid(1))%|C|
                    if(edgeInput((co_x+radii_spatial),co_y) == 1)
                        iris((co_x+radii_spatial),co_y) = 1;
                    elseif(edgeInput((co_x+radii_spatial+1),co_y) == 1)
                        iris((co_x+radii_spatial+1),co_y) = 1;
                    elseif(edgeInput((co_x+radii_spatial-1),co_y) == 1)
                        iris((co_x+radii_spatial-1),co_y) = 1;
                    end
                else%|D|
                    if(edgeInput((co_x-radii_spatial),co_y) == 1)
                        iris((co_x-radii_spatial),co_y) = 1;
                        
                    elseif(edgeInput((co_x-radii_spatial+1),co_y) == 1)
                        iris((co_x-radii_spatial+1),co_y) = 1;
                    elseif(edgeInput((co_x-radii_spatial-1),co_y) == 1)
                        iris((co_x-radii_spatial-1),co_y) = 1;
                    end                    
                end

             
            elseif ((centroid(1) < co_x)&&(centroid(2) < co_y))%|G|
                %real
                irisCoordinates_real = findIrisCoordinates([co_x co_y],centroid,radii_spatial);
                %appended
                irisCoordinates_appended = findIrisCoordinates([co_x co_y],centroid,radii_spatial+1);
                %prepended
                irisCoordinates_prepended = findIrisCoordinates([co_x co_y],centroid,radii_spatial-1);
                if(edgeInput(irisCoordinates_real) == 1)
                    disp('Working G 1');
                    iris(irisCoordinates_real) = 1;
                elseif(edgeInput(irisCoordinates_appended) == 1)
                    disp('Working G 2');
                    iris(irisCoordinates_appended) = 1;
                elseif(edgeInput(irisCoordinates_prepended) == 1)
                    disp('Working G 3');
                    iris(irisCoordinates_prepended) = 1;
                end  
            elseif ((centroid(1) > co_x)&&(centroid(2) > co_y))%|H|cautious. Threshold point (271,54).
                %real
                irisCoordinates_real = findIrisCoordinates([co_x co_y],centroid,radii_spatial);
                %appended
                irisCoordinates_appended = findIrisCoordinates([co_x co_y],centroid,radii_spatial+1);
                %prepended
                irisCoordinates_prepended = findIrisCoordinates([co_x co_y],centroid,radii_spatial-1);
                if(edgeInput(irisCoordinates_real) == 1)
                    disp('Working H 1');
                    iris(irisCoordinates_real) = 1;
                elseif(edgeInput(irisCoordinates_appended) == 1)
                    disp('Working H 2');
                    iris(irisCoordinates_appended) = 1;
                elseif(edgeInput(irisCoordinates_prepended) == 1)
                    disp('Working H 3');
                    iris(irisCoordinates_prepended) = 1;
                end                 
                
            elseif ((centroid(1) < co_x)&&(centroid(2) > co_y))%|F|cautious. Threshold point (120,65).
                %real
                irisCoordinates_real = findIrisCoordinates([co_x co_y],centroid,radii_spatial);
                %appended
                irisCoordinates_appended = findIrisCoordinates([co_x co_y],centroid,radii_spatial+1);
                %prepended
                irisCoordinates_prepended = findIrisCoordinates([co_x co_y],centroid,radii_spatial-1);    
                if(edgeInput(irisCoordinates_real) == 1)
                    disp('Working F 1');
                    iris(irisCoordinates_real) = 1;
                elseif(edgeInput(irisCoordinates_appended) == 1)
                    disp('Working F 2');
                    iris(irisCoordinates_appended) = 1;
                elseif(edgeInput(irisCoordinates_prepended) == 1)
                    disp('Working F 3');
                    iris(irisCoordinates_prepended) = 1;
                end                 
            elseif ((centroid(1) > co_x)&&(centroid(2) < co_y))%|E|
                %real
                irisCoordinates_real = findIrisCoordinates([co_x co_y],centroid,radii_spatial);
                %appended
                irisCoordinates_appended = findIrisCoordinates([co_x co_y],centroid,radii_spatial+1);
                %prepended
                irisCoordinates_prepended = findIrisCoordinates([co_x co_y],centroid,radii_spatial-1); 
                if(edgeInput(irisCoordinates_real) == 1)
                    disp('Working E 1'); 
                    iris(irisCoordinates_real) = 1;
                elseif(edgeInput(irisCoordinates_appended) == 1)
                     disp('Working E 2');
                    iris(irisCoordinates_appended) = 1;
                elseif(edgeInput(irisCoordinates_prepended) == 1)
                    disp('Working E 3');
                    iris(irisCoordinates_prepended) = 1;
                end                 
            else
                disp('The eye input is invalid. Failed in irisRetiever.'); 
            end
        else
            
        end
    end
end  
end

