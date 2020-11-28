%% script_1
%
%   This script produces the first letter of the logo.
%

%read in data
data = csvread('data/letter_1.csv');
%plot data
p = patch(data(:,1), data(:,2), 'black');
p.LineWidth = 2;

%% SOLUTION: Breakout 1

% %read in data
% data = csvread('data/letter_1.csv');
% %plot data
% p = patch(data(:,1), data(:,2), [1, 0.8, 0]);  % per reviewer comment
% p.LineWidth = 2;
