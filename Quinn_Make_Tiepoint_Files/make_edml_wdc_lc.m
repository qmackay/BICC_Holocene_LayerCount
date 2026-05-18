core1 = 'WDC';
core2 = 'EDML';

%% Generate match pair

raw_sites = "GISP2, GRIP, NEEM, NG1, NG2, DF, TALDICE, EDC, EDML, WDC";
list_sites = strtrim(split(raw_sites, ','));   % string array

n = numel(list_sites);
pairs = strings(0);

for i = 1:(n-1)
    for j = (i+1):n
        pairs(end+1) = list_sites(i) + "-" + list_sites(j);
    end
end

match = "";
for p = 1:numel(pairs)
    parts = split(pairs(p), "-");
    if (parts(1) == core1 && parts(2) == core2) || ...
       (parts(1) == core2 && parts(2) == core1)
        match = pairs(p);
        break
    end
end

disp(match)

%% Delete old matchfiles
delete(fullfile( ...
    '/Users/quinnmackay/Documents/GitHub/matchmaker/matchfiles', ...
    '*.mat'));

%% Split match into cores (force char for {} indexing)
tokens = strsplit(char(match), '-');  % cell array
core1 = tokens{1};                   % char
core2 = tokens{2};                   % char

%% Build path (char, not string)
base_path = '/Users/quinnmackay/Documents/GitHub/IceTiepoint_Analysis/Network Analysis/all_tiepoints';
path = fullfile(base_path, char(match));

%% Read text files
core1_file = fullfile(path, [core1 '.txt']);
core2_file = fullfile(path, [core2 '.txt']);

core1_data = readtable(core1_file, ...
    'FileType','text', ...
    'Delimiter','', ...
    'ReadVariableNames',false, ...
    'HeaderLines',1);

core2_data = readtable(core2_file, ...
    'FileType','text', ...
    'Delimiter','', ...
    'ReadVariableNames',false, ...
    'HeaderLines',1);

%% Append column of ones
core1_data.(sprintf('Var%d', width(core1_data)+1)) = ones(height(core1_data),1);
core2_data.(sprintf('Var%d', width(core2_data)+1)) = ones(height(core2_data),1);

core1_double = table2array(core1_data);
core2_double = table2array(core2_data);

%% Append additional layer-count files with specified rules

% Paths to additional files
edml_lc_file = '/Users/quinnmackay/Documents/GitHub/BICC/Holcene Revision Work/Synchronizing/edml_lc.txt';
wd_lc_file   = '/Users/quinnmackay/Documents/GitHub/BICC/Holcene Revision Work/Synchronizing/wd_lc.txt';

% Read edml_lc (columns: Depth, Count, Age...) and map Count->layer value.
if isfile(edml_lc_file)
    edml_mat = readmatrix(edml_lc_file, 'FileType', 'text');
    if size(edml_mat, 2) < 2
        error('edml_lc.txt must contain at least two numeric columns: Depth and Count.');
    end
    % Build output array: [Depth, layer_value]
    depths = edml_mat(:,1);
    counts = edml_mat(:,2);
    layervals = 6 * ones(size(depths));
    % If count == 0.5 set layer = 7
    layervals(counts == 0.5) = 7;
    edml_extra = [depths(:), layervals(:)];
    % Append EDML layer-count rows to the EDML core in the active match.
    if strcmpi(core1, 'EDML')
        core1_double = [core1_double; edml_extra];
    elseif strcmpi(core2, 'EDML')
        core2_double = [core2_double; edml_extra];
    else
        warning('Neither core in match is EDML; edml_lc rows were not appended.');
    end
end

% Read wd_lc (has columns: Depth, Age). We need only Depth and assign 6.
if isfile(wd_lc_file)
    wd_mat = readmatrix(wd_lc_file, 'FileType', 'text');
    if size(wd_mat, 2) < 1
        error('wd_lc.txt must contain at least one numeric column: Depth.');
    end
    depths_wd = wd_mat(:,1);
    layervals_wd = 6 * ones(size(depths_wd));
    wd_extra = [depths_wd(:), layervals_wd(:)];
    if strcmpi(core1, 'WDC')
        core1_double = [core1_double; wd_extra];
    elseif strcmpi(core2, 'WDC')
        core2_double = [core2_double; wd_extra];
    else
        warning('Neither core in match is WDC; wd_lc rows were not appended.');
    end
end

%% Save matchfiles
mp = core1_double;
save(fullfile( ...
    '/Users/quinnmackay/Documents/GitHub/matchmaker/matchfiles', ...
    [core1 '_match.mat']), 'mp');

mp = core2_double;
save(fullfile( ...
    '/Users/quinnmackay/Documents/GitHub/matchmaker/matchfiles', ...
    [core2 '_match.mat']), 'mp');