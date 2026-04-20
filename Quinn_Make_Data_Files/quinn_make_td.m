
clear;
% 
% % td for TALDICE
df = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/td/td_sulfate.txt');  % adjust path
depths = df.depth';   % transpose to row vector
sulfate   = df.sulfate';     % transpose to row vector

% Wrap data into MATLAB cell arrays
data = {sulfate};        % 1×1 cell array containing numeric row vector
depth = {depths};    % 1×1 cell array for depth
depth_no = [1];      % series 1 uses depth{1}
species = {'Sulfate'};
colours = [0 0 1];   % RGB blue

save('TD_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');