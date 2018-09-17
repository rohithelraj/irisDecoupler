LimbalRing_flag = 0;
Collarette_flag = 0;
Flecks_flag = 0;
physical_anisocoria_flag = 0;
sphincter_contrast_flag = 0;
DetectedVariants = 'Detected Variants';
Detections = 'Detections           ';
Gene = 'Gene:     ';
Accuracy = 0;
count = 1;
% To be implemented for multiple eyes.
%anisocoria_flag = 0;
%complete_heterochromia_flag = 0;
central_heterochromia_flag = 0;
sectoral_heterochromia_flag = 0;
[iris_actual_nopupil, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name] = ...
imageDataLoaderMain('contrasting sphincter',13);
LimbalRing_flag = LimbalRingDetectorFn(section_limbalRing,section_flecks);


central_heterochromia_flag = CentralHeterochromiaDetectorFn(section_flecks,section_collarette);
sectoral_heterochromia_flag = SectoralHeterochromiaDetectorFn(section_flecks);
Collarette_flag = collaretteDetectionFn(section_collarette);
Flecks_flag = SpotFinderFn(section_flecks);
[accuracy_contrastingSphincter,sphincter_contrast_flag] = ...
contrastingShincterDetectorFn(section_stroma,section_collarette);
%anisocoria_flag = AnisocoriaDetectorFn(0.5,pupil_diameter_left,pupil_diameter_right);
if(LimbalRing_flag)
    Detections = [Detections;'Limbal Ring          '];
    disp('GG at RS12906280 in Chromosome 15 Gene:Intergenic with 100% Probablility.');
    DetectedVariants = [DetectedVariants;'GG at RS12906280 '];
    Gene = [Gene;'Intergenic'];
    Accuracy  = [Accuracy;100];
    count = count + 1;
end
if(Collarette_flag)
    Detections = [Detections;'Collarette           '];
    disp('TT at RS1667394 in Chromosome 15 Gene:HERC2 with 33.33% Probability.');
    DetectedVariants = [DetectedVariants;'TT at RS1667394  '];
    Gene = [Gene;'HERC2     '];
    Accuracy  = [Accuracy;33.33];
    count = count + 1;
    disp('GG at RS16891982 in Chromosome 15 Gene:SLC45A2 with 33.33% Probability.');
    DetectedVariants = [DetectedVariants;'GG at RS16891982 '];
    Gene = [Gene;'SLC45A2   '];
    Accuracy  = [Accuracy;33.33];
    count = count + 1;
    disp('TT at RS13160471 in Chromosome 15 Gene:Intergenic with 33.33% Probability.');
    DetectedVariants = [DetectedVariants;'TT at RS13160471 '];
    Gene = [Gene;'Intergenic'];
    Accuracy  = [Accuracy;33.33];
    count = count + 1;
else
    if(central_heterochromia_flag)
        Detections = [Detections;'Central Heterochromia'];
        disp('GG at RS3768056 in Chromosome 1 Gene:Intergenic with 100% Probability.');
        DetectedVariants = [DetectedVariants;'GG at RS3768056  '];
        Gene = [Gene;'Intergenic'];
        Accuracy  = [Accuracy;100];
        count = count + 1;
    end
end
if(Flecks_flag)
    Detections = [Detections;'Flecks               '];
    disp('CC at RS4779685 in Chromosome 15 Gene:TJP1 with 50% Probability.');
    DetectedVariants = [DetectedVariants;'CC at RS4779685  '];
    Gene = [Gene;'TJP1      '];
    Accuracy  = [Accuracy;50];
    count = count + 1;    
    disp('AG at RS11634406 in Chromosome 15 Gene:Intergenic with 25% Probability.');
    DetectedVariants = [DetectedVariants;'AG at RS11634406 '];
    Gene = [Gene;'Intergenic'];
    Accuracy  = [Accuracy;25];
    count = count + 1;
    disp('AA at RS11634406 in Chromosome 15 Gene:Intergenic with 25% Probability.');
    DetectedVariants = [DetectedVariants;'AA at RS11634406 '];
    Gene = [Gene;'Intergenic'];
    Accuracy  = [Accuracy;25];
    count = count + 1;
end
if(sectoral_heterochromia_flag)
    disp('No SNP DetectedVariants Extrapolated for Sectoral Heterochromia so far.');
end
if(physical_anisocoria_flag)
    disp('No SNP DetectedVariants Extrapolated for Physical Anisocoria so far.');
end
if(sphincter_contrast_flag)
    Detections = [Detections;'Sphincter Contrast   '];
    disp('CT at RS3947367 in Chromosome 15 Gene:OCA2 with 50% Probability.');
    DetectedVariants = [DetectedVariants;'CT at RS3947367  '];
    Gene = [Gene;'OCA2      '];
    Accuracy  = [Accuracy;50];
    count = count + 1;
    disp('CT at RS989869 in Chromosome 15 Gene:OCA2 with 50% Probability.');
    DetectedVariants = [DetectedVariants;'CT at RS989869   '];
    Gene = [Gene;'OCA2      '];
    Accuracy  = [Accuracy;50];
    count = count + 1;
end
figure,imshow(iris_actual_nopupil), title(sprintf('Sample:%s',image_name));
fprintf('Sample:%s \nVariants Detected: %s \nGene Locations: %s \nAccuracy: %d \n Detections: %s',image_name,DetectedVariants,Gene,Accuracy,Detections);