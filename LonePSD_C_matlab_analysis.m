%% Load and Analyze FOOOF Results in Matlab - Single PSD
%
% This script is an example, with a single power spectrum,
% of integrating Python FOOOF into a Matlab workflow. 
% 
% It is part of a trio of files that must be run in order:
% - `LonePSD_A_*
% - `LonePSD_B_*
% - `LonePSD_C_*
%
% This code must be run after `LonePSD_B_python_fooofing.ipynb` has been run. 
%

%% Load Data

% Load FOOOF results
fooof_results = load('fooof_results.mat');

%% Explore FOOOF Results

% Check out FOOOF results
fooof_results

%% Now you can do anything you want with your FOOOF results