clear;
% 

% neem
ng1_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/ngrip1/ng1_ecm.txt'); 
ng1_ecm_depth = ng1_ecm.depth';   % transpose to row vector
ecm = ng1_ecm.ecm;

% Wrap data into MATLAB cell arrays
data{1} = ecm;        % 1×1 cell array containing numeric row vector

depth{1} = ng1_ecm_depth;    % 1×1 cell array for depth

depth_no = [1];      % series 1 uses depth{1}
species = {'ECM'};
colours = [0 0 1];

save('NG1_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');