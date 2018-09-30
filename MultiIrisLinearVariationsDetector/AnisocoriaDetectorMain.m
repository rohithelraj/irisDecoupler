%detects anisocoria in a provided eye pair
[~, ~, ~, ~, ~, ~, pupil_diameter_left,...
    ~, ~, ~, ~, ~, ~, pupil_diameter_right] = imageDataLoader('anisocoria',1);
anisocoria_threshold = 0.5;
pupilariy_variation = abs(pupil_diameter_left - pupil_diameter_right);
if(pupilariy_variation > anisocoria_threshold)
    disp('Physiological anisocoria detected.');
else
    disp('No Physiological anisocoria Detected');
end