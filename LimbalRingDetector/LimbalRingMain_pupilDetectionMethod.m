img = iread('SampleData\No_LimbalRing\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.jpg');
%gamma correction, used only for detection of the pupil.
img_gamm = igamm(img, 'sRGB');%gamma correction.
%Finding Pupil
[all_blobs,pupil] = findPupil( img_gamm );
%if pupil detected, the flag value will be 1.
[outputBlob,pupilFlag] = blobNoiseReduction( all_blobs );
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
     img = (uint8(rgbImage)*255) + img;
     figure,imshow('SampleData\No_LimbalRing\M134944 (V3)withFlecksNeviinhibitedWithWeakAmbientGradient.jpg');
     %RGB values of the detected pupil.
     RGBpixels=impixel(img,col,row);
     %Doing canny edge detection.
     edged_canny_image = cannyEdgeDetector_forPupil(img); 
     edged_pupil_image = cannyEdgeDetector_forPupil(uint8(rgbImage)); 
 else
    disp('The eye input is invalid.'); 
end



