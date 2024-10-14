% Run Dynare to generate the IRFs
stoch_simul c n inv w rk r y K a;


% Extracting the IRF data
% Dynare stores the IRFs in oo_.irfs
irf_y = oo_.irfs.y_e_a;
irf_c = oo_.irfs.c_e_a;
irf_n = oo_.irfs.n_e_a;
irf_inv = oo_.irfs.inv_e_a;
irf_w = oo_.irfs.w_e_a;
irf_rk = oo_.irfs.rk_e_a;
irf_R = oo_.irfs.r_e_a;
irf_a = oo_.irfs.a_e_a;


% Number of periods to plot
nPeriods = 10;

% Creating a figure using tiledlayout
figure;
tiledlayout(3, 3);  % 3x3 grid for 9 variables

% Ploting IRF for output (y)
nexttile;
plot(1:nPeriods, irf_y, 'LineWidth', 2);
title('IRF of Output (y)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for consumption (c)
nexttile;
plot(1:nPeriods, irf_c, 'LineWidth', 2);
title('IRF of Consumption (c)');
xlabel('Periods');
ylabel('Deviation');


% Ploting IRF for labor (n)
nexttile;
plot(1:nPeriods, irf_n, 'LineWidth', 2);
title('IRF of Labor (n)');
xlabel('Periods');
ylabel('Deviation');


% Ploting IRF for investment (inv)
nexttile;
plot(1:nPeriods, irf_inv, 'LineWidth', 2);
title('IRF of Investment (inv)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for wages (w)
nexttile;
plot(1:nPeriods, irf_w, 'LineWidth', 2);
title('IRF of Wages (w)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for return on capital (rk)
nexttile;
plot(1:nPeriods, irf_rk, 'LineWidth', 2);
title('IRF of Return on Capital (rk)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for interest rate (r)
nexttile;
plot(1:nPeriods, irf_r, 'LineWidth', 2);
title('IRF of Interest Rate (r)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for technology shock (a)
nexttile;
plot(1:nPeriods, irf_a, 'LineWidth', 2);
title('IRF of Technology (a)');
xlabel('Periods');
ylabel('Deviation');

% Adjust layout for better spacing
sgtitle('Impulse Response Functions to a Technology Shock');



% Run Dynare to generate the IRFs
stoch_simul c n inv w rk R y a;


% Extracting the IRF data
% Dynare stores the IRFs in oo_.irfs
irf_y = oo_.irfs.y_e_m;
irf_c = oo_.irfs.c_e_m;
irf_n = oo_.irfs.n_e_m;
irf_inv = oo_.irfs.inv_e_m;
irf_w = oo_.irfs.w_e_m;
irf_rk = oo_.irfs.rk_e_m;
irf_R = oo_.irfs.r_e_m;
irf_a = oo_.irfs.a_e_m;
irf_k = oo_.irfs.k_e_m;

% Number of periods to plot
nPeriods = 10;

% Creating a figure using tiledlayout
figure;
tiledlayout(3, 3);  % 3x3 grid for 9 variables

% Ploting IRF for output (y)
nexttile;
plot(1:nPeriods, irf_y, 'LineWidth', 2);
title('IRF of Output (y)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for consumption (c)
nexttile;
plot(1:nPeriods, irf_c, 'LineWidth', 2);
title('IRF of Consumption (c)');
xlabel('Periods');
ylabel('Deviation');


% Ploting IRF for labor (n)
nexttile;
plot(1:nPeriods, irf_n, 'LineWidth', 2);
title('IRF of Labor (n)');
xlabel('Periods');
ylabel('Deviation');


% Ploting IRF for investment (inv)
nexttile;
plot(1:nPeriods, irf_inv, 'LineWidth', 2);
title('IRF of Investment (inv)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for wages (w)
nexttile;
plot(1:nPeriods, irf_w, 'LineWidth', 2);
title('IRF of Wages (w)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for return on capital (rk)
nexttile;
plot(1:nPeriods, irf_rk, 'LineWidth', 2);
title('IRF of Return on Capital (rk)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for interest rate (r)
nexttile;
plot(1:nPeriods, irf_r, 'LineWidth', 2);
title('IRF of Interest Rate (r)');
xlabel('Periods');
ylabel('Deviation');

% Ploting IRF for monetary shock (m)
nexttile;
plot(1:nPeriods, irf_m, 'LineWidth', 2);
title('IRF of Technology (a)');
xlabel('Periods');
ylabel('Deviation');

% Adjust layout for better spacing
sgtitle('Impulse Response Functions to a Monetary Shock');

