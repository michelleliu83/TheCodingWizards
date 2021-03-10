% Removing 'undetermined' threat levels from the dataset for visualizations and data analysis

threat_level_clean = table2cell(threat_level);
idx = strcmp(threat_level_clean,'undetermined');
threat_level_clean(idx) = [];
threat_level_clean 

% Writing the code: Laurel, 1 hour
% Debugging the code: Sarah, 1 hour
% Collaborated using Paired Programming
