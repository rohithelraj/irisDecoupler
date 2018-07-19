function [outputBlob,blobCount] = blobNoiseReduction( blob, high , low )
%BLOBNOISEREDUCTION Summary of this function goes here
%   Detailed explanation goes here
blobCount = 0;
blobAreas = [blob.area];

newBlobIndex = 1;
    for area_index = 1:numel(blobAreas)
        if (blobAreas(area_index) > low)&& (blobAreas(area_index) < high)
            
               
                outputBlob(newBlobIndex) =  blob(area_index);
                newBlobIndex = newBlobIndex +1;
                blobCount = blobCount + 1;
          
            
        end
    end

end

