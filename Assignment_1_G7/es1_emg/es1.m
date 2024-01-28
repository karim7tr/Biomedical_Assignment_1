%% Biomedical Robotics: Assignment-1- EMG-/ Exo1 %%
%% Date: 31st Oct 2023
%% Location : GE, Italy
                            %% FORZA MILAN !!!!!                      %% Assignment session started :,,,)
%% Nothing special but Life is hard and here for it B)
%% ____________________________START__________________________________________%%

% Load the data
data = load('ES1_emg.mat'); % UPLOAD DONE 100% 
raw_data = data.Es1_emg.matrix(:,1);
movement_x = data.Es1_emg.matrix(:,2);
movement_y = data.Es1_emg.matrix(:,3);
movement_z = data.Es1_emg.matrix(:,4);

% Bandpass filter
band_pass = [0.03, 0.45]; % 30Hz-45Hz
band_filter = fir1(300, band_pass, 'bandpass'); %FIR
filtered_data = filtfilt(band_filter, 1, raw_data); %filtfilt_function
rectified_data = abs(filtered_data);

% Lowpass filter
low_pass_filter = designfilt('lowpassfir', 'FilterOrder', 10, 'CutoffFrequency', 5, 'SampleRate', 1000); % Assuming a 1000 Hz sampling rate
enveloped_data = filtfilt(low_pass_filter, rectified_data); %filtfilt funct looks like peper in Arabic 'filfil' X)

% Downsample '-' I miss Bechar :,)
down_sampled = downsample(enveloped_data, 4);

% Plotting AKA: @@@@@@ Showtime @@@@@@
subplot(1, 3, 1)
plot(raw_data)
hold on
plot(filtered_data)
title('Raw data and bandpass filtered data')

subplot(1, 3, 2)
plot(rectified_data)
hold on
plot(enveloped_data)
title('Rectified data and enveloped data')

subplot(1, 3, 3)
plot(movement_x)
hold on
plot(movement_y)
hold on
plot(movement_z)
hold on
plot(enveloped_data)
title('Movements and envelope')

% Question A: Down-Sampling
% Down-sampling after envelope computation preserves essential information in lower-frequency components while reducing data size.

% Question B: Temporal Relationship Between Muscle Activation and Movement
% This code focuses on signal processing and visualization. Additional steps are needed to analyze the onset of muscle activation in relation to movement.

%% ____________________________________PART ONE : FINISHED+ RESPECT________________________________________________________