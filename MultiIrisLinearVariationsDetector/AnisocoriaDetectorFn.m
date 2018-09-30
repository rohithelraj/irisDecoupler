function anisocoriaFlag = AnisocoriaDetectorFn(anisocoria_threshold,pupil_diameter_left,pupil_diameter_right)
%ANISOCORIADETECTORFN detects anisocoria in a provided eye pair
              %   Return: anisocoriaFlag -> Boolean variable that marks the existance of anisocoria from an eye pair.
              %   Argument: anisocoria_threshold -> Flecks section of an iris.
              %             pupil_diameter_left -> Diameter of the pupil of left eye.
              %             pupil_diameter_right -> Diameter of the pupil of right eye.
    pupilariy_variation = abs(pupil_diameter_left - pupil_diameter_right);
    if(pupilariy_variation > anisocoria_threshold)
        %disp('Physiological anisocoria detected.');
        anisocoriaFlag = 1;
    else
        %disp('No Physiological anisocoria Detected');
        anisocoriaFlag = 0;
    end
end

