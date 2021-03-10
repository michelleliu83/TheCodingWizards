% Creating a "heat map" that shows where fatalities occurred in the United States

% Writing and debugging by Laurel, 4 hours

% Extracting necessary variables for analysis
latitude = T(:, 16);
longitude = T(:, 15);
lat = table2array(latitude);
long = table2array(longitude); 

% Creating states to display data on
states = geoshape(shaperead('usastatehi', 'UseGeoCoords', true));
figure
ax = usamap('conus');
oceanColor = [.5 .7 .9];
setm(ax, 'FFaceColor', oceanColor)
geoshow(states)
hold off
geoscatter(lat, long, 'r')
