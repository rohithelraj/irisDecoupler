[iris_actual_nopupil,img_name] = imageDataLoader('with Limbal Ring',2);
result = iris_actual_nopupil;
lab_iris_actual_nopupil = rgb2lab(iris_actual_nopupil);
hsv = rgb2hsv(lab_iris_actual_nopupil);
[rows,columns,noChannels] = size(hsv);
    for x = 1:rows
        for y = 1:columns
            if hsv(x,y,3) == 100
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            elseif hsv(x,y,1) > 0.9
                result(x,y,1) = 0;
                result(x,y,2) = 0;
                result(x,y,3) = 0;
            end
        end
    end
  idisp({result,iris_actual_nopupil});  