LimbalRing_flag = 0;
Collarette_flag = 0;
Flecks_flag = 0;
physical_anisocoria_flag = 0;
sphincter_contrast_flag = 0;
% To be implemented for multiple eyes.
%anisocoria_flag = 0;
%complete_heterochromia_flag = 0;
central_heterochromia_flag = 0;
sectoral_heterochromia_flag = 0;
[iris_actual_nopupil, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name] = imageDataLoader('with Limbal Ring',2);
LimbalRing_flag = LimbalRingDetectorFn(section_limbalRing,section_flecks);


central_heterochromia_flag = CentralHeterochromiaDetectorFn(section_flecks,section_collarette);
sectoral_heterochromia_flag = SectoralHeterochromiaDetectorFn(section_flecks);
Collarette_flag = collaretteDetectionFn(section_collarette);
Flecks_flag = SpotFinderFn(section_flecks);
if(LimbalRing_flag)
    disp('GG at RS12906280 in Chromosome 15 Gene:Intergenic with 100% Probablility.');
    
end
if(Collarette_flag)
    disp('TT at RS1667394 in Chromosome 15 Gene:HERC2 with 33.33% Probability.');
    disp('GG at RS16891982 in Chromosome 15 Gene:SLC45A2 with 33.33% Probability.');
    disp('TT at RS13160471 in Chromosome 15 Gene:Intergenic with 33.33% Probability.');
else
    if(central_heterochromia_flag)
        disp('GG at RS3768056 in Chromosome 1 Gene:Intergenic with 100% Probability.');
    end
end
if(Flecks_flag)
    disp('CC at RS4779685 in Chromosome 15 Gene:TJP1 with 50% Probability.');
    disp('AG at RS11634406 in Chromosome 15 Gene:Intergenic with 25% Probability.');
    disp('AA at RS11634406 in Chromosome 15 Gene:Intergenic with 25% Probability.');
end
if(sectoral_heterochromia_flag)
    disp('No SNP detections Extrapolated for Sectoral Heterochromia so far.');
end
if(physical_anisocoria_flag)
    disp('No SNP detections Extrapolated for Physical Anisocoria so far.');
end
if(sphincter_contrast_flag)
    disp('CT at RS3947367 in Chromosome 15 Gene:OCA2 with 50% Probability.');
    disp('CT at RS989869 in Chromosome 15 Gene:OCA2 with 50% Probability.');
end