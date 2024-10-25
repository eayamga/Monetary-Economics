% Computational Problem Set III
% Monetary Economics
% Eric Ayamga
% Dynare file

% Load the Excel file
data = readtable('/users/ayamga/Documents/DynareWork/SW(2007).xlsx');

% Display first few rows to identify relevant columns (adjust as needed)
disp(data(1:5,:));

% Naming the columns
dates = data{:,1};  
cons = data{:,2}; 
inv = data{:,3};
inc = data{:,4};
hrwrked = data{:,5};
inf = data{:,6};
wage = data{:,7};
ffrate = data{:,8};
recession = data{:,9};
hrwrked1 = data{:,10};
inflation_cpi = data{:,11};

% HP Filter Parameters (Lambda for quarterly data = 1600)
lambda = 1600;

% Apply the HP filter (cons is the raw data)
[trend, cycle] = hpfilter(cons);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, cons, 'LineWidth', 2); hold on;
plot(dates, trend, '--r', 'LineWidth', 2);
title('consumption and HP Filtered Trend');
legend('consumption', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Consumption)');
hold on;
grid on;


in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


% Apply the HP filter (inv is the raw data)
[trend1, cycle1] = hpfilter(inv);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, inv, 'LineWidth', 2); hold on;
plot(dates, trend1, '--r', 'LineWidth', 2);
title('Investment and HP Filtered Trend');
legend('Investment', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle1, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Investment)');
hold on;
grid on;


in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


% Apply the HP filter (inc is the raw data)
[trend2, cycle2] = hpfilter(inc);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, inc, 'LineWidth', 2); hold on;
plot(dates, trend2, '--r', 'LineWidth', 2);
title('Income and HP Filtered Trend');
legend('Income', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle2, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Income)');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


% Apply the HP filter (hrwrked is the raw data)
[trend3, cycle3] = hpfilter(hrwrked);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, hrwrked, 'LineWidth', 2); hold on;
plot(dates, trend3, '--r', 'LineWidth', 2);
title('Hours worked and HP Filtered Trend');
legend('Hours worked', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle3, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Hours worked)');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;



% Apply the HP filter (inf is the raw data)
[trend4, cycle4] = hpfilter(inf);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, inf, 'LineWidth', 2); hold on;
plot(dates, trend4, '--r', 'LineWidth', 2);
title('Inflation rate and HP Filtered Trend');
legend('Inflation rate', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle4, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Inflation rate)');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


% Apply the HP filter (wage is the raw data)
[trend5, cycle5] = hpfilter(wage);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, wage, 'LineWidth', 2); hold on;
plot(dates, trend5, '--r', 'LineWidth', 2);
title('wage and HP Filtered Trend');
legend('Wage', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle5, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Wage)');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;



% Apply the HP filter (ffrate is the raw data)
[trend6, cycle6] = hpfilter(ffrate);

% Plot the results to check the detrending
figure;
subplot(2,1,1);
plot(dates, ffrate, 'LineWidth', 2); hold on;
plot(dates, trend6, '--r', 'LineWidth', 2);
title('Federal Funds rate and HP Filtered Trend');
legend('Federal Funds rate', 'Trend');
hold on;
grid on;

subplot(2,1,2);
plot(dates, cycle6, 'LineWidth', 2);
title('HP Filtered Cycle (Detrended Federal Funds rate)');
hold on;
grid on;


in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the GDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;




%Demeaning the data series

%Calculating the mean of each series

mean_cons = mean(cons);
mean_inc = mean(inc);
mean_inv = mean(inv);
mean_inf = mean(inf);
mean_ffrate = mean(ffrate);
mean_hrwrked = mean(hrwrked);
mean_wage = mean(wage);

%Demeaning the variables

demeaned_cons = cons - mean_cons;
demeaned_inc = inc - mean_inc;
demeaned_inv = inv - mean_inv;
demeaned_inf = inf - mean_inf;
demeaned_ffrate = ffrate - mean_ffrate;
demeaned_hrwrked = hrwrked - mean_hrwrked;
demeaned_wage = wage - mean_wage;

%Graphing the demeaned variables

%Plotting demmeaned_cons
figure;
plot(dates, demeaned_cons, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned consumption');
title('Deemeaned Consumption with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the consumption plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demeaned_inc
figure;
plot(dates, demeaned_inc, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned real gross domestic product');
title('Deemeaned RGDP with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the RGDP plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demmeaned_inv
figure;
plot(dates, demeaned_inv, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned Inveestment');
title('Deemeaned Investment with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the Investment plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;

%Plotting demmeaned_cons
figure;
plot(dates, demeaned_inf, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned Inflation rate');
title('Deemeaned Inflation ratte with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the Inflation rate plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demmeaned_cons
figure;
plot(dates, demeaned_wage, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned wage');
title('Deemeaned wage with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the wage plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demmeaned_ffrate
figure;
plot(dates, demeaned_ffrate, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned federal funds rate');
title('Deemeaned federal with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the federal funds rate plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demeaned_hrwrked
figure;
plot(dates, demeaned_hrwrked, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned Hours worked');
title('Deemeaned hours worked with NBER recession regions');
hold on;
grid on;

in_recession = false;
for i = 1:length(recession)
    if recession(i)== 1 && ~in_recession
        %start of a recession
        r_start = dates(i);
        in_recession = true;
    elseif recession(i)== 0 && in_recession
        %endd of aa recession
        r_end = dates(i);
        %add shaading for a recession period
        y_limits = ylim;
        fill([r_start r_start r_end r_end], [y_limits(1) y_limits(2) y_limits(2) y_limits(1)], ...
            [0.9 0.9 0.9], 'EdgeColor', 'none');
        in_recession = false;
    end
end

%Bring the hours worked plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;



