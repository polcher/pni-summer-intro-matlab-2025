%% 1. Finding differences in spike counts across attented and unattended stimulus conditions.
% load data
load('spike_count_attention.mat')
num_cells=size(fr_all,2);

% dimensions: 
% 1 - attended (1) and inattended (2) color stimuli
% 2 - channels (think of these like neurons)
% 3 - time in ms (the stimulus onset is at 250 ms).



%% plot averaged spike counts for attended and unattended conditions.
% Average spike count across all channels
mean_sc = squeeze(mean(fr_all, 2));

% Plot a line showing attended spike counts over time
fig = figure;
plot(mean_sc(1, :)); 
hold on

% Plot a line showing inattended spike counts over time
plot(mean_sc(2, :));

% Add a vertical line in a different color showing stimulus onset
xline(250, 'r')

% Add labels and such
title("Spike counts for attended and inattended stimuli over time")
xlabel("Time (ms)")
ylabel("Spike counts")
legend('Attended', 'Inattended')

% Save the figure
saveas(fig,'spike_counts_plot')


%% Statistical comparisons
% Average spike counts for each channel across time (not including time 
% before the stimulus onset) for each condition
mean_sc_time1 = mean(fr_all(1, :, 250:end), 3);
mean_sc_time2 = mean(fr_all(2, :, 250:end), 3);

% compare average inattended spike counts vs average attended spike counts
[~,p] = ttest(mean_sc_time1,mean_sc_time2)

% find maximum spike count in each condition. Is it higher in condition 1 or 2? 
max_1 = max(fr_all(1, :, :), [], 'all')
max_2 = max(fr_all(2, :, :), [], 'all')




%% 2. testing if the strength of spike counts in two conditions are correlated. 
% Find correlation between the two conditions' average spike counts
[c,~] = corr(mean_sc_time1', mean_sc_time2', 'Rows', 'pairwise')

%% Make a scatter plot of average inattentive spike count vs average 
% attentive spike count for all of the channels
fig = figure();
scatter(mean_sc_time1, mean_sc_time2, 'filled', 'm');
hold on

%add a trend line
p = polyfit(mean_sc_time1, mean_sc_time2, 1); % the output p is of the form [slope, y-intercept] for the trend line
px = [min(mean_sc_time1) max(mean_sc_time1)]; % get x range that the trend line should go through
py = p(1)*px + p(2); % find y range based on slope and intercept by doing mx + b

% Plot x and y for trend line. Make the line width 1.2 and the color blue
plot(px, py, 'LineWidth', 1.2,'Color', 'b');

% Add axis labels
xlabel("attended spike counts")
ylabel("attended spike counts")

% Save figure
saveas(fig, 'condition_correlation')
