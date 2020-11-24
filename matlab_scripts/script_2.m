%% script_2
%
%   This script produces the second letter of the logo.
%

%read in data
data = csvread('data/letter_2.csv');
%plot data
l = patch(data(:,1), data(:,2), 'black');
l.LineWidth = 2;

%% SOLUTION: Breakout 1

% %read in data
% data = csvread('data/letter_2.csv');
% %plot data
% l = patch(data(:,1), data(:,2), [0, 0.2, 0.4]);  % per reviewer comment
% l.LineWidth = 2;
