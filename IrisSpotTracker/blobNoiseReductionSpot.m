function [outputBlob,flag] = blobNoiseReductionSpot( blob, high , low )
%BLOBNOISEREDUCTION Removes unwanted blobs.
%   By filtering out the blobs outside an area range.
%   Arguments: blob -> blobs generated using iblobs. low ->numeric value, low area threshold. high -> numeric value, high area threshold, must be greater than low.
%   It also returns a flag that notifies existance of bolobs between the specified areas.
flag = 0;
blobAreas = [blob.area];
max_area = 0;
newBlobIndex = 1;
    for area_index = 1:numel(blobAreas)
        if (blobAreas(area_index) > low)&& (blobAreas(area_index) < high)
            %if((blob(area_index).uc > 195 && blob(area_index).uc < 215)&&(blob(area_index).vc > 60 && blob(area_index).vc < 104))
               
                outputBlob(newBlobIndex) =  blob(area_index);
                newBlobIndex = newBlobIndex +1;
                flag = 1;
            %end
            
        end
    end

    if(flag == 0)
                outputBlob = 0;
    end
end

