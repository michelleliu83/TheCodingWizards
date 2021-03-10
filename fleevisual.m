% This code was based off of Laurel and Michelle's coding for chitest

% Writing the code: Sarah, 5 hours
% Debugging the code: Michelle and Laurel, 3 hours
% When using this code through GitHub, we sometimes struggled to get the visualization to show both 'not flee' and 'flee', specifically in AppDesigner
% We even approached the TAs with our question!

% Reading data downloaded from GitHub
T = readtable('fatal-police-shootings-data.csv');

% Focusing our analysis on race and flee by using these variables in the data
race = T(:,8);
flee = T(:,13);
% Properly converting the data
racecell = table2cell(race);
fleecell = table2cell(flee);
race_string = string(racecell);
flee_string = string(fleecell);

% Creating a for loop and if statements to count values we want (more information in chi-square code comments)
for ii = 1:length(race_string)
   if race_string(ii) ~= "B";
      race_string(ii) = "O";
     end
end
black_flee = 0;
other_flee = 0;
black_not_flee = 0;
other_not_flee = 0;
    for k = 1:length(flee_string)
       if flee_string(k) == "fleeing" && race_string(k) == "B"
          black_flee = black_flee + 1;
          elseif flee_string(k) == "fleeing" && race_string(k) == "O"
             other_flee = other_flee + 1;
          elseif flee_string(k) == "Not fleeing" && race_string(k) == "B"
          black_not_flee = black_not_flee + 1;
    elseif flee_string(k) == "Not fleeing" && race_string(k) == "O"
             other_not_flee = other_not_flee + 1;
   end
 end
 
% Creating a bar chart for Black people fleeing vs Other people fleeing
x = categorical({'Black', 'Other'});
yes_flee = vertcat(black_flee, other_flee);
not_flee = vertcat(black_not_flee, other_not_flee);
y = horzcat(yes_flee, not_flee);
bar(x,y)
legend('Flee', 'Not Flee')
title('Flee vs Not Fleeing Comparison')
% The difference between fleeing and not fleeing is larger in ‘Other’ races than in Black people. 
% This could indicate that no matter their status of ‘fleeing’ or ‘not fleeing,’ they could be viewed as a threat and shot regardless.
