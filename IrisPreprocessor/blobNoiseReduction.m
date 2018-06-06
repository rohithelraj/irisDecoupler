function [outputBlob,flag] = blobNoiseReduction( blob, high , low )
%BLOBNOISEREDUCTION Summary of this function goes here
%   Detailed explanation goes here
flag = 0;
blobAreas = [blob.area];
newBlobIndex = 1;
    for area_index = 1:numel(blobAreas)
        if (blobAreas(area_index) > low)&& (blobAreas(area_index) < high)
            outputBlob(newBlobIndex) =  blob(area_index);
            newBlobIndex = newBlobIndex +1;
            flag = flag + 1;
        end
    end
    if(flag == 0)
                outputBlob = 0;
    end
end

