function [outputBlob,flag] = blobNoiseReduction( blob )
%BLOBNOISEREDUCTION Summary of this function goes here
%   Detailed explanation goes here
flag = 0;
blobAreas = [blob.area];
newBlobIndex = 1;
    for area_index = 1:numel(blobAreas)
        if (blobAreas(area_index) > 950)&& (blobAreas(area_index) < 3000)
            outputBlob(newBlobIndex) =  blob(area_index);
            newBlobIndex = newBlobIndex +1;
            flag = flag + 1;
        end
    end
end

