%% script_5
%
%   This script produces the yellow banner
%

% read in data
data = csvread('data/upper_banner.csv');
%plot data
color = [1.0, 0.8235, 0];
l = patch(data(:,1), data(:,2), color);
l.LineWidth = 2;
l.EdgeColor = color; 
xlim([-2,32])
ylim([-3,22])

%% SOLUTION: Breakout 1

% %read in data
% data = csvread('data/upper_banner.csv');
% %plot data
% color = [1.0, 0.8235, 0];
% l = patch(data(:,1), data(:,2), color);
% l.LineWidth = 2;
% l.EdgeColor = color; 
% xlim([-2,32])
% ylim([-3,22])
% 
% %plot text
% text(2.5,1.5, 'Marquette rocks!', 'FontSize', 10)  % per reviewer comment
