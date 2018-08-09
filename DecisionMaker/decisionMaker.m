LimbalRing_flag = 0;
Collarette_flag = 0;
Flecks_flag = 0;
% To be implemented for multiple eyes.
%anisocoria_flag = 0;
%complete_heterochromia_flag = 0;
central_heterochromia_flag = 0;
sectoral_heterochromia_flag = 0;
[iris_actual_nopupil, section_limbalRing, section_flecks, section_collarette, section_stroma, image_name] = imageDataLoader('with Limbal Ring',2);
LimbalRing_flag = LimbalRingDetectorFn(section_limbalRing,section_flecks);
Collarette_flag = collaretteDetectionFn(section_collarette);
Flecks_flag = SpotFinderFn(section_flecks);
central_heterochromia_flag = CentralHeterochromiaDetectorFn(section_flecks,section_collarette);
sectoral_heterochromia_flag = SectoralHeterochromiaDetectorFn(section_flecks);