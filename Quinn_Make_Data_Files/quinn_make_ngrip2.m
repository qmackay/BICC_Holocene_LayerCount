clear;
% 

% ng2
ng2_dep = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/ngrip2/ng2_dep.txt'); 
ng2_dep_depth = ng2_dep.depth';   % transpose to row vector
dep = ng2_dep.dep;

ng2_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/ngrip2/ng2_ecm.txt'); 
ng2_ecm_depth = ng2_ecm.depth';   % transpose to row vector
ecm = ng2_ecm.ecm;

ng2_sulfate = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/ngrip2/ng2_sulfate.txt'); 
ng2_sulfate_depth = ng2_sulfate.depth';   % transpose to row vector
sulfate = ng2_sulfate.sulfate;

% Wrap data into MATLAB cell arrays
data{1} = dep;        % 1×1 cell array containing numeric row vector
data{2} = ecm; 
data{3} = sulfate; 

depth{1} = ng2_dep_depth;    % 1×1 cell array for depth
depth{2} = ng2_ecm_depth; 
depth{3} = ng2_sulfate_depth; 

depth_no = [1 2 3];      % series 1 uses depth{1}
species = {'DEP' 'ECM' 'Sulfate'};
colours = [0 0 1; 0 1 0; 0.5 0 0.5];

save('NG2_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');