clear;
% 

% neem
neem_cond = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/neem/neem_cond.txt'); 
neem_cond_depth = neem_cond.depth';   % transpose to row vector
cond = neem_cond.cond;

neem_dep = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/neem/neem_dep.txt'); 
neem_dep_depth = neem_dep.depth';   % transpose to row vector
dep = neem_dep.dep;

neem_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/neem/neem_ecm.txt'); 
neem_ecm_depth = neem_ecm.depth';   % transpose to row vector
ecm = neem_ecm.ecm;

neem_sulfate = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/neem/neem_sulfate.txt'); 
neem_sulfate_depth = neem_sulfate.depth';   % transpose to row vector
sulfate = neem_sulfate.sulfate;

% Wrap data into MATLAB cell arrays
data{1} = cond;        % 1×1 cell array containing numeric row vector
data{2} = dep; 
data{3} = ecm; 
data{4} = sulfate; 

depth{1} = neem_cond_depth;    % 1×1 cell array for depth
depth{2} = neem_dep_depth; 
depth{3} = neem_ecm_depth; 
depth{4} = neem_sulfate_depth; 

depth_no = [1 2 3 4];      % series 1 uses depth{1}
species = {'Cond' 'DEP' 'ECM' 'Sulfate'};
colours = [0 0 1; 0 1 0; 0.5 0 0.5; 1 0 0];

save('NEEM_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');