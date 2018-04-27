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
%                    |?|
%    |?|         .    |             |?|
%                 .   |
%                 | . |
%                ?|  .|
%                 | . . .
%--|?|-------------.-----.--------------|?|---
%                   . . .
%                     |
%                     |
%                     |
%    |?|              |             |?|
%                    |?|
%                     |

  iris = zeros(400,200);
  %centroid(1)-> Centroid(X)
  %centroid(2)-> Centroid(Y)
  
  centroid = [201 99];
  for co_x = 1:400
    for co_y = 1:200
        if (pupil(co_y,co_x) == 1)
            if (co_x == centroid(1))
                if (co_y > centroid(2))%|A|
                    
                else%|B|
                    
                end
            elseif (co_y == centroid(2))
                if (co_x > centroid(1))%|C|
                    
                else%|D|
                    
                end
            elseif ((centroid(1) < co_x)&&(centroid(2) < co_y))%|G|
                
            elseif ((centroid(1) > co_x)&&(centroid(2) > co_y))%|H|
                
            elseif ((centroid(1) < co_x)&&(centroid(2) > co_y))%|F|
                
            elseif ((centroid(1) > co_x)&&(centroid(2) < co_y))%|E|
                
            else
                disp('The eye input is invalid. Failed in irisRetiever.'); 
            end
        else
            
        end
    end
end  
end

