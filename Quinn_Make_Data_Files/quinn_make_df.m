
clear;
% 
% % df for Dome Fuji
df = readtable('~/Desktop/df_shallow1.txt');  % adjust path
depths = df.Depth';   % transpose to row vector
ecm   = df.ecm';     % transpose to row vector

% Wrap data into MATLAB cell arrays
data = {ecm};        % 1×1 cell array containing numeric row vector
depth = {depths};    % 1×1 cell array for depth
depth_no = [1];      % series 1 uses depth{1}
species = {'ECM'};
colours = [0 0 1];   % RGB blue

save('DomeFuji_shallow1_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');