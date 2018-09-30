%Code for comparing Detected and actual data.
clear all;
ActualData = load('Actual_Data/M970076 (V3).mat');
ComputedData = load('Data_Outputs/M970076 (V3)withmultipleFlecksNevi.mat');

undetectedSNPs= {'GG at RS12906280';'TT at RS1667394';'GG at RS16891982';'TT at RS13160471';'GG at RS3768056';'CC at RS4779685';'AG at RS11634406';'AA at RS11634406'...
    ;'CT at RS3947367';'CT at RS989869'};
actualDetections = getfield(ActualData,'Detections');
temp= string(getfield(ComputedData,'DetectedVariants'));
computedDetections = temp(2:length(temp),1);
detections_tmp= string(getfield(ComputedData,'Detections'));
detections_performed = detections_tmp(2:length(detections_tmp),1);

for i = 1:length(computedDetections) 
    tempVar1 = strtrim(computedDetections(i,1));
     result1(:,i)= strcmp(tempVar1,undetectedSNPs);
end
undetect = sum(result1,2);
undetectedSNPs = undetectedSNPs(find(undetect<1),1);

for i = 1:length(actualDetections) 
    
     result2(:,i)= strcmp(actualDetections(i,1),undetectedSNPs);
end
undetect = sum(result2,2);
undetectedSNPs = undetectedSNPs(find(undetect<1),1);

for i = 1:length(computedDetections) 
    tempVar = strtrim(computedDetections(i,1));
     result(:,i)= strcmp(tempVar,strtrim(actualDetections));
end
FinalResult = sum(result);
Total_accuracy = (sum(FinalResult)/length(FinalResult)) * 100;
accuratePredictions = computedDetections(find(FinalResult>0),1);
inaccuratePredictions = computedDetections(find(FinalResult<1),1);

