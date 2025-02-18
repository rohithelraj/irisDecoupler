%image data loader argument types -> no Limbal Ring,no collarette with
%limbal ring, with Limbal Ring, without Limbal Ring and collorate.

[img,img_name] = imageDataLoader('contrasting sphincter',13);
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
     pupil = imcomplement(pupil);
     rgbImage = cat(3, pupil, pupil, pupil);
     [row,col]=find(binaryImage);
     PupilPixels = [row,col];
     img_nopupil = (uint8(rgbImage)*255) + img;
     edged_canny_image = cannyEdgeDetector_forEye(img_nopupil);
     edged_pupil_image = cannyEdgeDetector_forEye(uint8(rgbImage)); 
     [iris,standard_count,plus_count,minus_count,plus_count_2,minus_count_2] = irisRetriever(edged_canny_image,edged_pupil_image);
     rgbImage_iris = cat(3, iris, iris, iris);
     edged_canny_iris = cannyEdgeDetector_forEye(uint8(rgbImage_iris));
     %recursive call of trace completer, 6 times.
     tracedIris = TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(TraceCompleter(iris))))));
     

     tracedIris_blobs = iblobs(tracedIris,'boundary');
     [tracedIris_blobs_up,irisFlag] = blobNoiseReduction(tracedIris_blobs,30000,15000);
     if(irisFlag == 1)
        disp('Iris Detected.'); 
        tracedIris_blobs_up.plot_box; %For blob boxes.
        box_side_iris = sqrt(tracedIris_blobs_up.bboxarea);
        result_iris = tracedIris_blobs_up.bbox;
        %For distinguishing color variations.
        hEllipse_iris = imellipse(gca,[result_iris(1) result_iris(2) box_side_iris box_side_iris]);
        %For non distinguishing color variations.
        binaryImage_iris = hEllipse_iris.createMask();
        binaryImage_iris_compl = imcomplement(binaryImage_iris);
        title(sprintf('Iris Trace: with Limbal Ring \n %s \n Counts: Plus> %d Minus> %d Standard> %d Plus2> %d Minus2> %d',img_name,plus_count,minus_count,standard_count,plus_count_2,minus_count_2));

        rgbImage_iris = cat(3, binaryImage_iris_compl, binaryImage_iris_compl, binaryImage_iris_compl);
        iris_actual =  (uint8(rgbImage_iris)*255) + img;
        %binaryImage_pupil_compl = imcomplement(binaryImage);
        rgbImage_pupil = cat(3, pupil, pupil, pupil);
        iris_actual_nopupil = (uint8(rgbImage_pupil)*255) + iris_actual;
        
        noiser = load('eye_sections\noiser.mat');
        cap_area_eye = getfield(noiser, 'noiser');
        [noiseless_iris_section,clean_iris_no_pupil] = imageNoiseRemover(iris_actual_nopupil, cap_area_eye);
        figure, imshow(clean_iris_no_pupil);
     end
 else
    disp('The eye input is invalid.'); 
end



