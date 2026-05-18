% File name array for Matchmaker
%         1        2        3        4        5        6
% Order : Core1    Core2    etc.

files.core{1} = 'WDC';
files.datafile{1} = 'WDC_data.mat';
files.matchfile{1} = 'WDC_match.mat';
% optional, secondary mp file:
% files.matchfile_secondary{2} = 'CORE2_core123match_secondary.mat';

files.core{2} = 'EDML';
files.datafile{2} = 'EDML_data.mat';
files.matchfile{2} = 'EDML_match.mat';
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