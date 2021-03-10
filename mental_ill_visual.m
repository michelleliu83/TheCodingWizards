% Visualization of vicitms with mental illness 
T = readtable('fatal-police-shootings-data.csv');

% Extracting the needed variable for analysis
mental_illness = T(:,11);

% Creating pie chart for history of mental illness
mental_illness_cell = table2cell(mental_illness); % Converted mental illness to cell format
tbl_mental_illness = tabulate(mental_illness_cell); % Tabulating mental_illness
X = cell2mat(tbl_mental_illness(:,2)); % Creating a matrix 
labels = {'No Mental Illness', 'Mental Illness'}; % Adding labels between 'no mental illness' and 'mental illness'
pie3(X,labels) % Creating a 3D pie chart with labels
title('History of Mental Illness in Victims') % Adding a title to make visualization clear

% Writing by; Michelle, 1 hour
% Debugging by: Sarah, 1 hour
% Collaborated with Paired Programming
