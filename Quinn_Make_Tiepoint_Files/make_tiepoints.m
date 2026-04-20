core1 = 'EDML';
core2 = 'WDC';

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
base_path = '/Users/quinnmackay/Documents/GitHub/BICC/Antarctic Chronology Accuracy Project/Plot_Sulfate/tiepoints';
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

%% Save matchfiles
mp = core1_double;
save(fullfile( ...
    '/Users/quinnmackay/Documents/GitHub/matchmaker/matchfiles', ...
    [core1 '_match.mat']), 'mp');

mp = core2_double;
save(fullfile( ...
    '/Users/quinnmackay/Documents/GitHub/matchmaker/matchfiles', ...
    [core2 '_match.mat']), 'mp');