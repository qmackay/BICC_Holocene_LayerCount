clear;
% 

% Set working directory to main project folder
wd = '/Users/quinnmackay/Documents/GitHub/BICC_Holocene_LayerCount';
cd(wd);

% wdc for WDC
wdc_dep = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_dep.txt', 'VariableNamingRule', 'preserve'); 
wdc_dep_depth = wdc_dep.Depth';   % transpose to row vector
dep = wdc_dep.DEP;

wdc_dc_ecm = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_dc_ecm.txt', 'VariableNamingRule', 'preserve');
wdc_dc_ecm_depth = wdc_dc_ecm.Depth';   % transpose to row vector
dc_ecm = wdc_dc_ecm.DC_ECM;

wdc_ac_ecm = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_ac_ecm.txt', 'VariableNamingRule', 'preserve');
wdc_ac_ecm_depth = wdc_ac_ecm.Depth';   % transpose to row vector
ac_ecm = wdc_ac_ecm.AC_ECM;

wdc_sulfate = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_sulfate.txt', 'VariableNamingRule', 'preserve');
wdc_sulfate_depth = wdc_sulfate.Depth';   % transpose to row vector
sulfate = wdc_sulfate.Sulfate;

wdc_bc_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_bc.txt', 'VariableNamingRule', 'preserve');
wdc_bc_shallow_depth = wdc_bc_shallow.Depth_m';
bc = wdc_bc_shallow.BC;

wdc_br_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_br.txt', 'VariableNamingRule', 'preserve');
wdc_br_shallow_depth = wdc_br_shallow.Depth_m';
br = wdc_br_shallow.Br;

wdc_cond_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_cond.txt', 'VariableNamingRule', 'preserve');
wdc_cond_shallow_depth = wdc_cond_shallow.("Depth(m)")';
cond_us = wdc_cond_shallow.("Cond(uS)");

wdc_na_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_Na.txt', 'VariableNamingRule', 'preserve');
wdc_na_brittle_depth = wdc_na_brittle.("Depth(m)")';
na_ng_g = wdc_na_brittle.("Na(ng/g)");

wdc_na_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_na.txt', 'VariableNamingRule', 'preserve');
wdc_na_shallow_depth = wdc_na_shallow.Depth_m';
na = wdc_na_shallow.Na;

wdc_nh4_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nh4.txt', 'VariableNamingRule', 'preserve');
wdc_nh4_shallow_depth = wdc_nh4_shallow.Depth_m';
nh4 = wdc_nh4_shallow.nh4;

wdc_no3_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_No3.txt', 'VariableNamingRule', 'preserve');
wdc_no3_brittle_depth = wdc_no3_brittle.("Depth(m)")';
no3_ng_g = wdc_no3_brittle.("NO3(ng/g)");

wdc_nssca_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssCa.txt', 'VariableNamingRule', 'preserve');
wdc_nssca_shallow_depth = wdc_nssca_shallow.Depth_m';
nssca = wdc_nssca_shallow.nssCa;

wdc_nsss_na_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssS_Na.txt', 'VariableNamingRule', 'preserve');
wdc_nsss_na_shallow_depth = wdc_nsss_na_shallow.Depth_m';
nsss_na_ratio = wdc_nsss_na_shallow.nssS_Na_ratio;

wdc_nsss_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssS.txt', 'VariableNamingRule', 'preserve');
wdc_nsss_shallow_depth = wdc_nsss_shallow.Depth_m';
nsss = wdc_nsss_shallow.nssS;

wdc_so4_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_so4.txt', 'VariableNamingRule', 'preserve');
wdc_so4_brittle_depth = wdc_so4_brittle.("Depth(m)")';
so4_ng_g = wdc_so4_brittle.("SO4(ng/g)");

wdc_so4_na_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_so4_Na.txt', 'VariableNamingRule', 'preserve');
wdc_so4_na_brittle_depth = wdc_so4_na_brittle.("Depth(m)")';
so4_na_ratio = wdc_so4_na_brittle.SO4_Na_ratio;

wdc_sr_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_sr.txt', 'VariableNamingRule', 'preserve');
wdc_sr_shallow_depth = wdc_sr_shallow.Depth_m';
sr = wdc_sr_shallow.Sr;

% Wrap data into MATLAB cell arrays
data{1} = dep;        % 1×1 cell array containing numeric row vector
data{2} = dc_ecm;  
data{3} = ac_ecm;  
data{4} = sulfate;  
data{5} = bc;
data{6} = br;
data{7} = cond_us;
data{8} = na_ng_g;
data{9} = na;
data{10} = nh4;
data{11} = no3_ng_g;
data{12} = nssca;
data{13} = nsss_na_ratio;
data{14} = nsss;
data{15} = so4_ng_g;
data{16} = so4_na_ratio;
data{17} = sr;

depth{1} = wdc_dep_depth;    % 1×1 cell array for depth
depth{2} = wdc_dc_ecm_depth; 
depth{3} = wdc_ac_ecm_depth; 
depth{4} = wdc_sulfate_depth;
depth{5} = wdc_bc_shallow_depth;
depth{6} = wdc_br_shallow_depth;
depth{7} = wdc_cond_shallow_depth;
depth{8} = wdc_na_brittle_depth;
depth{9} = wdc_na_shallow_depth;
depth{10} = wdc_nh4_shallow_depth;
depth{11} = wdc_no3_brittle_depth;
depth{12} = wdc_nssca_shallow_depth;
depth{13} = wdc_nsss_na_shallow_depth;
depth{14} = wdc_nsss_shallow_depth;
depth{15} = wdc_so4_brittle_depth;
depth{16} = wdc_so4_na_brittle_depth;
depth{17} = wdc_sr_shallow_depth;

depth_no = 1:17;
species = {'DEP' 'DC-ECM' 'AC-ECM' 'Sulfate' 'shallow_BC' 'shallow_Br' 'shallow_Cond(uS)' 'brittle_Na(ng/g)' 'shallow_Na' 'shallow_NH4' 'brittle_NO3(ng/g)' 'shallow_nssCa' 'shallow_nssS/Na' 'shallow_nssS' 'brittle_SO4(ng/g)' 'brittle_SO4/Na' 'shallow_Sr'};
colours = lines(numel(species));

save('data/WDC_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');