function anisocoriaFlag = AnisocoriaDetectorFn(anisocoria_threshold,pupil_diameter_left,pupil_diameter_right)
%ANISOCORIADETECTORFN Summary of this function goes here
%   Detailed explanation goes here
    
    pupilariy_variation = abs(pupil_diameter_left - pupil_diameter_right);
    if(pupilariy_variation > anisocoria_threshold)
        %disp('Physiological anisocoria detected.');
        anisocoriaFlag = 1;
    else
        %disp('No Physiological anisocoria Detected');
        anisocoriaFlag = 0;
    end
end

