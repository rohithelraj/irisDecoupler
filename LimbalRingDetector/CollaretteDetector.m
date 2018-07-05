[iris_actual_nopupil,img_name] = imageDataLoader('with Limbal Ring',7);
%This detection works only with green colored eyes.
result = iris_actual_nopupil;
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
hsv = rgb2hsv(lab_iris_actual_nopupil);
%generic implementation for all colored eyes.
rounded_hsv = round(hsv(:,:,1),4);
[counts,binLocations]  = imhist(rounded_hsv,1000);

counter_histo = 1; 
counter_zero = 1; 
new_binLocations(1) = 0;
zero_locations(1) = 0;
new_counts(1) = 0;
ranges = 0;
for x = 1:size(counts)
     if(counts(x) == 0)
         zero_locations(counter_zero) = binLocations(x);
         counter_zero = counter_zero + 1;  
     end
     if(counts(x) > 500)
       new_binLocations(counter_histo) = binLocations(x); 
       new_counts(counter_histo) = counts(x);
       counter_histo = counter_histo + 1;  
     end     
end

[M,I] = max(new_counts);
Peak = new_binLocations(I);

[rows,columns,noChannels] = size(hsv);
    for x = 1:rows
        for y = 1:columns
            if hsv(x,y,3) == 100
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
            if hsv(x,y,1) == Peak
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
            
        end
    end
  idisp({result,iris_actual_nopupil});  