% Statistical chi square test of independence to test relationship between 'mental illness' and 'threat level'

% Reading data from GitHub
T = readtable('fatal-police-shootings-data.csv');
mental_illness = T(:, 11); % extracting variables

% We used a chi squre test of independence because of our nominal categorical variables
% Writing the code: Michelle and Laurel, 2 hours
% Debugging the code: Michelle and Laurel, 2 hours
% Collaborated with Pair Programming

% To do this, we needed to download a chi2ind function, which we discovered and learned out ourselves
% We accessed online resources to learn about statistical functions in MatLab
% Also, we reviewed which statistical tests would be appropriate for our analysis

% Extracting variables we need
mental_illness = T(:, 11);
threat_level = T(:, 12);

% Converting variables
mental_ill_string = string(table2cell(mental_illness));
threat_level_string = string(table2cell(threat_level));

% Setting values equal to 0
mentalill_attack = 0;
notmentalill_attack = 0;
mentalill_other = 0;
notmentalill_other = 0;

% Finding correlation between mental illness and threat level
for k = 1:length(mental_ill_string)

% Using a for loop and if statement to count the length of each category:
% For example, if the victim showed signs of mental illness and had an attacking threat level
for k = 1:length(mental_ill_string)
    if mental_ill_string(k) == "True" && threat_level_string(k) == "attack"
        mentalill_attack = mentalill_attack + 1;
    elseif mental_ill_string(k) == "False" && threat_level_string(k) == "attack"
        notmentalill_attack = notmentalill_attack + 1;
    elseif mental_ill_string(k) == "True" && threat_level_string(k) ~= "attack"
mentalill_other = mentalill_other + 1;
    elseif mental_ill_string(k) == "False" && threat_level_string(k) ~= "attack"
       notmentalill_other = notmentalill_other + 1;
    end
end

% Our null hypothesis was whether the victim had shown signs of mental illness was independent of whether they attacked the officer. 
% Our alternate hypothesis was whether the victim had shown signs of mental illness was not independent of whether they attacked the officer. 
% We used a 0.05 alpha level
mentalill_attack_other = vertcat(mentalill_attack, mentalill_other);
notmentalill_attack_other = vertcat(notmentalill_attack, notmentalill_other);
[h, chi, p] = chi2ind([mentalill_attack_other, notmentalill_attack_other], 0.05);

% We conducted a chi square test and received a test statistic value of 4.8115. 
% This translated into a p-value of less than 0.05. 
% (In statistics, the p-value is the probability of finding the observed, or more extreme, results when the null hypothesis (H0) is true).
% Because our p-value was less than our pre-chosen significance level of 0.05, we rejected the null hypothesis
% We concluded that there was an association between whether the victim had shown signs of mental illness and whether they attacked the officer.

