%% Matlab PreProcessing - Multiple PSDs
%
% This script is an example, with multiple power spectra,
% of integrating Python FOOOF into a Matlab workflow.
%
% It is part of a trio of files that must be run in order:
% - `MultiPSD_A_*
% - `MultiPSD_B_*
% - `MultiPSD_C_*
%

%% Load Data

% Load two channels of time series data
load('data/ch_dat_one.mat');
load('data/ch_dat_two.mat');

% Combine into a multi-channel data matrix
chs_data = [ch_dat_one; ch_dat_two]';

%% Calculate Power Spectra

% Calculate power spectra with Welch's method
[psds, freqs] = pwelch(chs_data, 500, [], [], s_rate);

%% Save Out Data

% Save the power spectra out to mat files
save('power_spectra', 'freqs', 'psds');
