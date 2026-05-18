clear;
% 

% edml
edml_cond = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_Cond.txt', 'VariableNamingRule', 'preserve'); 
edml_cond_depth = edml_cond.("Depth(m)");   % transpose to row vector
cond = edml_cond.("Cond(mikroS/cm)");

edml_dc_ecm = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_dc_ecm.txt', 'VariableNamingRule', 'preserve'); 
edml_dc_ecm_depth = edml_dc_ecm.depth';   % transpose to row vector
dc_ecm = edml_dc_ecm.dc_ecm;

edml_na = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_na.txt', 'VariableNamingRule', 'preserve'); 
edml_na_depth = edml_na.("Depth(m)")';   % transpose to row vector
na = edml_na.("Na(ng/g)");

edml_ca = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_ca.txt', 'VariableNamingRule', 'preserve');
edml_ca_depth = edml_ca.("Depth(m)");
ca = edml_ca.("Ca(ng/g)");

edml_dust = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_dust.txt', 'VariableNamingRule', 'preserve');
edml_dust_depth = edml_dust.("Depth(m)");
dust = edml_dust.("Dust(particles/ml)");

edml_nh4 = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_nh4.txt', 'VariableNamingRule', 'preserve');
edml_nh4_depth = edml_nh4.("Depth(m)");
nh4 = edml_nh4.("NH4(ng/g)");

edml_sulfate = readtable('data/raw_lc_data/lc_data_for_matchmaker/EDML/edml_sulfate.txt', 'VariableNamingRule', 'preserve');
edml_sulfate_depth = edml_sulfate.depth;
sulfate = edml_sulfate.sulfate;

% Wrap data into MATLAB cell arrays
data{1} = dc_ecm;        % 1×1 cell array containing numeric row vector
data{2} = cond;   
data{3} = ca;
data{4} = dust;
data{5} = nh4;
data{6} = na;
data{7} = sulfate;

depth{1} = edml_dc_ecm_depth;    % 1×1 cell array for depth
depth{2} = edml_cond_depth; 
depth{3} = edml_ca_depth;
depth{4} = edml_dust_depth;
depth{5} = edml_nh4_depth;
depth{6} = edml_na_depth;
depth{7} = edml_sulfate_depth;

depth_no = 1:7;
species = {'DC_ECM' 'CFA Conductivity' 'Ca(ng/g)' 'Dust(particles/ml)' 'NH4(ng/g)', 'Na(ng/g)', 'Sulfate'};
colours = lines(numel(species));

save('data/EDML_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');