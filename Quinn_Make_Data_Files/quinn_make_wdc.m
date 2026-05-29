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

wdc_deep_bc = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_BC.txt', 'VariableNamingRule', 'preserve');
wdc_deep_bc_depth = wdc_deep_bc.Depth';
deep_bc = wdc_deep_bc.BC;

wdc_deep_na = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_Na.txt', 'VariableNamingRule', 'preserve');
wdc_deep_na_depth = wdc_deep_na.Depth';
deep_na = wdc_deep_na.Na;

wdc_deep_mg = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_Mg.txt', 'VariableNamingRule', 'preserve');
wdc_deep_mg_depth = wdc_deep_mg.Depth';
deep_mg = wdc_deep_mg.Mg;

wdc_deep_s = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_S.txt', 'VariableNamingRule', 'preserve');
wdc_deep_s_depth = wdc_deep_s.Depth';
deep_s = wdc_deep_s.S;

wdc_deep_br = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_Br.txt', 'VariableNamingRule', 'preserve');
wdc_deep_br_depth = wdc_deep_br.Depth';
deep_br = wdc_deep_br.Br;

wdc_deep_sr = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_Sr.txt', 'VariableNamingRule', 'preserve');
wdc_deep_sr_depth = wdc_deep_sr.Depth';
deep_sr = wdc_deep_sr.Sr;

wdc_deep_nsss_na = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_deep_NssS_Na.txt', 'VariableNamingRule', 'preserve');
wdc_deep_nsss_na_depth = wdc_deep_nsss_na.Depth';
deep_nsss_na_ratio = wdc_deep_nsss_na.S_Na_ratio;

wdc_bc_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_bc.txt', 'VariableNamingRule', 'preserve');
wdc_bc_shallow_depth = wdc_bc_shallow.Depth_m';
shallow_bc = wdc_bc_shallow.BC;

wdc_br_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_br.txt', 'VariableNamingRule', 'preserve');
wdc_br_shallow_depth = wdc_br_shallow.Depth_m';
shallow_br = wdc_br_shallow.Br;

wdc_cond_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_cond.txt', 'VariableNamingRule', 'preserve');
wdc_cond_shallow_depth = wdc_cond_shallow.("Depth(m)")';
shallow_cond_us = wdc_cond_shallow.("Cond(uS)");

wdc_na_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_Na.txt', 'VariableNamingRule', 'preserve');
wdc_na_brittle_depth = wdc_na_brittle.("Depth(m)")';
brittle_na_ng_g = wdc_na_brittle.("Na(ng/g)");

wdc_na_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_na.txt', 'VariableNamingRule', 'preserve');
wdc_na_shallow_depth = wdc_na_shallow.Depth_m';
shallow_na = wdc_na_shallow.Na;

wdc_nh4_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nh4.txt', 'VariableNamingRule', 'preserve');
wdc_nh4_shallow_depth = wdc_nh4_shallow.Depth_m';
shallow_nh4 = wdc_nh4_shallow.nh4;

wdc_no3_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_No3.txt', 'VariableNamingRule', 'preserve');
wdc_no3_brittle_depth = wdc_no3_brittle.("Depth(m)")';
brittle_no3_ng_g = wdc_no3_brittle.("NO3(ng/g)");

wdc_nssca_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssCa.txt', 'VariableNamingRule', 'preserve');
wdc_nssca_shallow_depth = wdc_nssca_shallow.Depth_m';
shallow_nssca = wdc_nssca_shallow.nssCa;

wdc_nsss_na_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssS_Na.txt', 'VariableNamingRule', 'preserve');
wdc_nsss_na_shallow_depth = wdc_nsss_na_shallow.Depth_m';
shallow_nsss_na_ratio = wdc_nsss_na_shallow.nssS_Na_ratio;

wdc_nsss_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_nssS.txt', 'VariableNamingRule', 'preserve');
wdc_nsss_shallow_depth = wdc_nsss_shallow.Depth_m';
shallow_nsss = wdc_nsss_shallow.nssS;

wdc_so4_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_so4.txt', 'VariableNamingRule', 'preserve');
wdc_so4_brittle_depth = wdc_so4_brittle.("Depth(m)")';
brittle_so4_ng_g = wdc_so4_brittle.("SO4(ng/g)");

wdc_so4_na_brittle = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_brittle_so4_Na.txt', 'VariableNamingRule', 'preserve');
wdc_so4_na_brittle_depth = wdc_so4_na_brittle.("Depth(m)")';
brittle_so4_na_ratio = wdc_so4_na_brittle.SO4_Na_ratio;

wdc_sr_shallow = readtable('data/raw_lc_data/lc_data_for_matchmaker/WDC/wdc_shallow_sr.txt', 'VariableNamingRule', 'preserve');
wdc_sr_shallow_depth = wdc_sr_shallow.Depth_m';
shallow_sr = wdc_sr_shallow.Sr;

% Wrap data into MATLAB cell arrays (order: shallow -> brittle -> deep)
data{1} = dep;        % 1×1 cell array containing numeric row vector
data{2} = dc_ecm;  
data{3} = ac_ecm;  
data{4} = sulfate;  
% Shallow measurements
data{5} = shallow_bc;
data{6} = shallow_br;
data{7} = shallow_cond_us;
data{8} = shallow_na;
data{9} = shallow_nh4;
data{10} = shallow_nssca;
data{11} = shallow_nsss_na_ratio;
data{12} = shallow_nsss;
data{13} = shallow_sr;
% Brittle measurements
data{14} = brittle_na_ng_g;
data{15} = brittle_no3_ng_g;
data{16} = brittle_so4_ng_g;
data{17} = brittle_so4_na_ratio;
% Deep measurements
data{18} = deep_bc;
data{19} = deep_na;
data{20} = deep_mg;
data{21} = deep_s;
data{22} = deep_br;
data{23} = deep_sr;
data{24} = deep_nsss_na_ratio;

depth{1} = wdc_dep_depth;    % 1×1 cell array for depth
depth{2} = wdc_dc_ecm_depth; 
depth{3} = wdc_ac_ecm_depth; 
depth{4} = wdc_sulfate_depth;
% Shallow depths
depth{5} = wdc_bc_shallow_depth;
depth{6} = wdc_br_shallow_depth;
depth{7} = wdc_cond_shallow_depth;
depth{8} = wdc_na_shallow_depth;
depth{9} = wdc_nh4_shallow_depth;
depth{10} = wdc_nssca_shallow_depth;
depth{11} = wdc_nsss_na_shallow_depth;
depth{12} = wdc_nsss_shallow_depth;
depth{13} = wdc_sr_shallow_depth;
% Brittle depths
depth{14} = wdc_na_brittle_depth;
depth{15} = wdc_no3_brittle_depth;
depth{16} = wdc_so4_brittle_depth;
depth{17} = wdc_so4_na_brittle_depth;
% Deep depths
depth{18} = wdc_deep_bc_depth;
depth{19} = wdc_deep_na_depth;
depth{20} = wdc_deep_mg_depth;
depth{21} = wdc_deep_s_depth;
depth{22} = wdc_deep_br_depth;
depth{23} = wdc_deep_sr_depth;
depth{24} = wdc_deep_nsss_na_depth;

depth_no = 1:24;
species = {'DEP' 'DC-ECM' 'AC-ECM' 'Sulfate' 'shallow_BC' 'shallow_Br' 'shallow_Cond(uS)' 'shallow_Na' 'shallow_NH4' 'shallow_nssCa' 'shallow_nssS/Na' 'shallow_nssS' 'shallow_Sr' 'brittle_Na(ng/g)' 'brittle_NO3(ng/g)' 'brittle_SO4(ng/g)' 'brittle_SO4/Na' 'deep_BC' 'deep_Na' 'deep_Mg' 'deep_S' 'deep_Br' 'deep_Sr' 'deep_nssS/Na'};
colours = lines(numel(species));

save('data/WDC_data.mat', 'data', 'depth', 'depth_no', 'species', 'colours');