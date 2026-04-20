clear;
% 

% edml
edml_cond = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_cfa_cond.txt', 'VariableNamingRule', 'preserve'); 
edml_cond_depth = edml_cond.depth';   % transpose to row vector
cond = edml_cond.cond;

edml_dc_ecm = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_dc_ecm.txt', 'VariableNamingRule', 'preserve'); 
edml_dc_ecm_depth = edml_dc_ecm.depth';   % transpose to row vector
dc_ecm = edml_dc_ecm.dc_ecm;

edml_sulfate = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_sulfate.txt', 'VariableNamingRule', 'preserve'); 
edml_sulfate_depth = edml_sulfate.depth';   % transpose to row vector
sulfate = edml_sulfate.sulfate;

edml_ca = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_ca.txt', 'VariableNamingRule', 'preserve');
edml_ca_depth = edml_ca.("Depth(m)")';
ca = edml_ca.("Ca(ng/g)");

edml_dust = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_dust.txt', 'VariableNamingRule', 'preserve');
edml_dust_depth = edml_dust.("Depth(m)")';
dust = edml_dust.("Dust(particles/ml)");

edml_nh4 = readtable('/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/out/edml/edml_nh4.txt', 'VariableNamingRule', 'preserve');
edml_nh4_depth = edml_nh4.("Depth(m)")';
nh4 = edml_nh4.("NH4(ng/g)");

% Wrap data into MATLAB cell arrays
data{1} = dc_ecm;        % 1×1 cell array containing numeric row vector
data{2} = cond;  
data{3} = sulfate;  
data{4} = ca;
data{5} = dust;
data{6} = nh4;

depth{1} = edml_dc_ecm_depth;    % 1×1 cell array for depth
depth{2} = edml_cond_depth; 
depth{3} = edml_sulfate_depth; 
depth{4} = edml_ca_depth;
depth{5} = edml_dust_depth;
depth{6} = edml_nh4_depth;

depth_no = 1:6;
species = {'DC_ECM' 'CFA Conductivity' 'Sulfate' 'Ca(ng/g)' 'Dust(particles/ml)' 'NH4(ng/g)'};
colours = lines(numel(species));

save('EDML_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');