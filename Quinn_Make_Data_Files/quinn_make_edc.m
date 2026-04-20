clear;
% 

% edc
edc_dep = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edc/edc_dep.txt'); 
edc_dep_depth = edc_dep.depth';   % transpose to row vector
dep = edc_dep.dep;

edc_sulfate = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edc/edc_sulfate.txt'); 
edc_sulfate_depth = edc_sulfate.depth';   % transpose to row vector
sulfate = edc_sulfate.sulfate;

% Wrap data into MATLAB cell arrays
data{1} = dep;        % 1×1 cell array containing numeric row vector
data{2} = sulfate;    

depth{1} = edc_dep_depth;    % 1×1 cell array for depth
depth{2} = edc_sulfate_depth; 

depth_no = [1 2];      % series 1 uses depth{1}
species = {'DEP' 'Sulfate'};
colours = [0 0 1; 0 1 0];

save('EDC_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');