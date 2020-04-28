%% Matlab PreProcessing - Lone PSD
%
% This script is an example, with a single power spectrum,
% of integrating Python FOOOF into a Matlab workflow. 
% 
% It is part of a trio of files that must be run in order:
% - `LonePSD_A_*
% - `LonePSD_B_*
% - `LonePSD_C_*
%

%% Load Data

% Load a single channel of data
load('data/ch_dat_one.mat');

%% Calculate Power Spectra

% Calculate a power spectrum with Welch's method
[psd, freqs] = pwelch(ch_dat_one, 500, [], [], s_rate);

%% Save Out Data

% Save the power spectra out to mat files
save('power_spectrum', 'freqs', 'psd');
