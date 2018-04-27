function iris = irisRetriever(edgeInput,pupil)
%IRISRETRIEVER Summary of this function goes here
%   Detailed explanation goes here
%                 |
%                |B|
%     |H|         |        |F|
%                 |
%-|D|-------------C-------------|C|-
%                 |
%                 |
%     |E|        |A|       |G|
%                 |                 
%
  iris = zeros(400,200);
  %centroid(1)-> Centroid(Y)
  %centroid(2)-> Centroid(X)
  centroid = [201 99];
  for co_x = 1:200
    for co_y = 1:400
        if (pupil(co_y,co_x) == 1)
            if (co_x == centroid(2))
                if (co_y > centroid(1))%|A|
                    
                else%|B|
                    
                end
            elseif (co_y == centroid(1))
                if (co_x > centroid(2))%|C|
                    
                else%|D|
                    
                end
            elseif ((centroid(2) < co_x)&&(centroid(1) < co_y))%|E|
                
            elseif ((centroid(2) > co_x)&&(centroid(1) > co_y))%|F|
                
            elseif ((centroid(2) < co_x)&&(centroid(1) > co_y))%|G|
                
            elseif ((centroid(2) > co_x)&&(centroid(1) < co_y))%|H|
                
            else
                disp('The eye input is invalid. Failed in irisRetiever.'); 
            end
        else
            
        end
    end
end  
end

