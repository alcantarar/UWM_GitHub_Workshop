%% script_4
%
%   This script produces the banner shadow
%

%read in data
data = csvread('data/lower_banner.csv');
%plot data
l = patch(data(:,1), data(:,2), 'black');
l.LineWidth = 2;

%% SOLUTION: Breakout 1

% %read in data
% data = csvread('data/lower_banner.csv');
% %plot data
% l = patch(data(:,1), data(:,2), [0, 0.2, 0.4]);  % per reviewer comment
% l.LineWidth = 2;
