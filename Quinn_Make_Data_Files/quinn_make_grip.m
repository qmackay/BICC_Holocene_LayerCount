clear;
% 

% grip
grip_dep = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/grip/grip_dep.txt'); 
grip_dep_depth = grip_dep.depth';   % transpose to row vector
dep = grip_dep.dep;

grip_dep2 = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/grip/grip_dep2.txt'); 
grip_dep2_depth = grip_dep2.depth';   % transpose to row vector
dep2 = grip_dep2.dep;

grip_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/grip/grip_ecm.txt'); 
grip_ecm_depth = grip_ecm.depth';   % transpose to row vector
ecm = grip_ecm.ecm;

grip_ecm2 = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/grip/grip_ecm2.txt'); 
grip_ecm2_depth = grip_ecm2.depth';   % transpose to row vector
ecm2 = grip_ecm2.ecm2;

% Wrap data into MATLAB cell arrays
data{1} = dep;        % 1×1 cell array containing numeric row vector
data{2} = dep2; 
data{3} = ecm; 
data{4} = ecm2; 

depth{1} = grip_dep_depth;    % 1×1 cell array for depth
depth{2} = grip_dep2_depth; 
depth{3} = grip_ecm_depth; 
depth{4} = grip_ecm2_depth; 

depth_no = [1 2 3 4];      % series 1 uses depth{1}
species = {'DEP' 'DEP2' 'ECM' 'ECM2'};
colours = [0 0 1; 0 1 0; 0.5 0 0.5; 1 0 0];

save('GRIP_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');