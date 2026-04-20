clear;
% 

% gisp2
gisp2_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/gisp2/gisp2_ecm.txt'); 
gisp2_ecm_depth = gisp2_ecm.depth';   % transpose to row vector
ecm = gisp2_ecm.ecm;

gisp2_sulfate = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/gisp2/gisp2_sulfate.txt'); 
gisp2_sulfate_depth = gisp2_sulfate.depth';   % transpose to row vector
sulfate = gisp2_sulfate.sulfate;

% Wrap data into MATLAB cell arrays
data{1} = ecm;        % 1×1 cell array containing numeric row vector
data{2} = sulfate;  

depth{1} = gisp2_ecm_depth;    % 1×1 cell array for depth
depth{2} = gisp2_sulfate_depth; 

depth_no = [1 2];      % series 1 uses depth{1}
species = {'ECM' 'Sulfate'};
colours = [0 0 1; 0 1 0];

save('GISP2_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');