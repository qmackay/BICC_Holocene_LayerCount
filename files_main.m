% File name array for Matchmaker
%         1        2        3        4        5        6
% Order : Core1    Core2    etc.

files.core{1} = 'DF';
files.datafile{1} = 'DF_data.mat';
files.matchfile{1} = 'DF_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{1} = 'CORE1_core123match_secondary.mat';

files.core{2} = 'WDC';
files.datafile{2} = 'WDC_data.mat';
files.matchfile{2} = 'WDC_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{3} = 'EDML';
files.datafile{3} = 'EDML_data.mat';
files.matchfile{3} = 'EDML_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{4} = 'EDC';
files.datafile{4} = 'EDC_data.mat';
files.matchfile{4} = 'EDC_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{5} = 'TALDICE';
files.datafile{5} = 'TALDICE_data.mat';
files.matchfile{5} = 'TALDICE_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{6} = 'GRIP';
files.datafile{6} = 'GRIP_data.mat';
files.matchfile{6} = 'GRIP_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{7} = 'GISP2';
files.datafile{7} = 'GISP2_data.mat';
files.matchfile{7} = 'GISP2_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{8} = 'NEEM';
files.datafile{8} = 'NEEM_data.mat';
files.matchfile{8} = 'NEEM_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{9} = 'NG1';
files.datafile{9} = 'NG1_data.mat';
files.matchfile{9} = 'NG1_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{10} = 'NG2';
files.datafile{10} = 'NG2_data.mat';
files.matchfile{10} = 'NG2_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

% FILL IN THE RIGHT NAMES, for example:
% files.core{4} = 'NGRIP2';
% files.datafile{4} = 'ngrip2_data.mat';
% files.matchfile{4} = 'ngrip2_test.mat';
% 
% files.core{5} = 'GISP2';
% files.datafile{5} = 'gisp2_data.mat';
% files.matchfile{5} = 'gisp2_test.mat';

% NOTE the matchfile names used. There has to be a file for each core, but
% the files comprise a set. Therefore, using the core name first and the
% name of the matching project afterwards is a good way of keeping track of
% the files.