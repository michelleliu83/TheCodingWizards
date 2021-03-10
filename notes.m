% This is a notes file mostly filled with scratch notes
% To note, Sarah was primarily in charge of visualizations 
% Laurel was primarily in charge of the GUI
% Michelle was in charge of statistical analyses
% The primary use of collaboration came from pair programming where we took
% turns pair programming each other


% Calculating mean age
% % T1 = T(:, 6);
% % age = rmmissing(T1);%REMOVES NAN
% % age_matrix = table2array(age)
% % mean(age_matrix);

% This was originally made a while ago when we were all figuring out how to
% Extracting variables to use in analysis:
date = T(:, 3);
armed = T(:, 5);
age = T(:, 6);
gender = T(:, 7);
race = T(:, 8);
city = T(:, 9);
state = T(:, 10);
mental_illness = T(:, 11);
threat_level = T(:, 12);
flee = T(:, 13);
body_cam = T(:, 14);
longitude = T(:, 15);
latitude = T(:, 16);

% Writing the code: Laurel, 2 hours
% Debugging the code: Michelle, Sarah, 1 hour
% Collaborated with Pair Programming
