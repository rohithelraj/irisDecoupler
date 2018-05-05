img = iread('SampleData\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
%gamma correction, used only for detection of the pupil.
img_gamm = igamm(img, 'sRGB');%gamma correction.
%Finding Pupil
[all_blobs,pupil] = findPupil( img_gamm );
%if pupil detected, the flag value will be 1.
[outputBlob,pupilFlag] = blobNoiseReduction( all_blobs, 3000, 950 );
if (pupilFlag == 1)
     disp('Pupil Detected.'); 
     %Displaying detected pupil
     figure,imshow(img);
     outputBlob.plot_box; %For blob boxes.
     box_side = sqrt(outputBlob.bboxarea);
     result = outputBlob.bbox;
     hEllipse = imellipse(gca,[result(1) result(2) box_side box_side]);
     binaryImage = hEllipse.createMask();
     rgbImage = cat(3, binaryImage, binaryImage, binaryImage);
     [row,col]=find(binaryImage);
     PupilPixels = [row,col];
     img_nopupil = (uint8(rgbImage)*255) + img;
     figure,imshow('SampleData\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
     %RGB values of the detected pupil.
     %RGBpixels=impixel(img_nopupil,col,row);
     %Doing canny edge detection.
     edged_canny_image = cannyEdgeDetector_forEye(img_nopupil); 
     edged_pupil_image = cannyEdgeDetector_forEye(uint8(rgbImage)); 
     iris = irisRetriever(edged_canny_image,edged_pupil_image);
     rgbImage_iris = cat(3, iris, iris, iris);
     edged_canny_iris = cannyEdgeDetector_forEye(uint8(rgbImage_iris));
     %recursive call of trace completer, 6 times.
     tracedIris = TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(iris))))));
     tracedIris_blobs = iblobs(tracedIris,'boundary');
     [tracedIris_blobs_up,irisFlag] = blobNoiseReduction(tracedIris_blobs,20000,10000);
     if(irisFlag == 1)
        disp('Iris Detected.'); 
        tracedIris_blobs_up.plot_box; %For blob boxes.
        box_side_iris = sqrt(tracedIris_blobs_up.bboxarea);
        result_iris = tracedIris_blobs_up.bbox;
        hEllipse_iris = imellipse(gca,[result_iris(1)-4 result_iris(2)-4 box_side_iris+3 box_side_iris+3]);
        binaryImage_iris = hEllipse_iris.createMask();
        binaryImage_iris_compl = imcomplement(binaryImage_iris);
        figure,imshow('SampleData\M062327 (V3)multipleStarburstswithFlecksNeviInhibitedAmberGradient.jpg');
        rgbImage_iris = cat(3, binaryImage_iris_compl, binaryImage_iris_compl, binaryImage_iris_compl);
        iris_actual =  (uint8(rgbImage_iris)*255) + img;
        %binaryImage_pupil_compl = imcomplement(binaryImage);
        rgbImage_pupil = cat(3, binaryImage, binaryImage, binaryImage);
        iris_actual_nopupil = (uint8(rgbImage_pupil)*255) + iris_actual;
        figure, imshow(iris_actual_nopupil);
     end
 else
    disp('The eye input is invalid.'); 
end



