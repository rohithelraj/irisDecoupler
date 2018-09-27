% d=dir('*.mat');
% for i=1:length(d)
%   variable = load(d(i).name);     % will leave whatever variable is in mat-file in memory
%   [p,n]=fileparts(d(i).name);         % get path, name w/o extension
%   %csvwrite([fullfile(p,n) '.csv'],getfield(variable,'Total_accuracy'));
%   csvwrite([fullfile(p,n) '.csv'],getfield(variable,'actualDetections'));
% end
