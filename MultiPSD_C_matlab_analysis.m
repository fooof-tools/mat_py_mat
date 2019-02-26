%% Load and Analyze FOOOF Results in Matlab - Multiple PSDs
% 
% This script is an example, with multiple power spectra,
% of integrating Python FOOOF into a Matlab workflow. 
% 
% It is part of a trio of files that must be run in order:
% - `MultiPSD_A_*
% - `MultiPSD_B_*
% - `MultiPSD_C_*
%
% This code must be run after `MultiPSD_B_python_fooofing.ipynb has been run.
%

%% Load a specific variable that was saved out to a mat file

% Load exponents
exps = load('exps');

% Check out the exponents
exps

%% Load in FOOOF results that have been saved out - from json file

% Add the utils folder to path, that has the load function
addpath('utils')

% Load the fooof-formated json file, saved out from Python
fooof_results = load_fooof_results('fooof_results.json');

% Check out fooof_results
fooof_results

%% Load in FOOOF results that have been saved out - from mat files

fooof_results = [];
for ind = 0:1
    cur_result = load(strcat('f_res_', string(ind)));
    fooof_results = [fooof_results, cur_result];
end

% Check out outputs
fooof_results

%% Now you can do anything you want with your FOOOF results