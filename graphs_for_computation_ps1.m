% Run Dynare to generate the IRFs
stoch_simul c n inv w rk R y K a;


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
irf_k = oo_.irfs.k_e_a;

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


% Ploting IRF for capital (k)
nexttile;
plot(1:nPeriods, irf_k, 'LineWidth', 2);
title('IRF of capital (k)');
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

% Ploting IRF for interest rate (R)
nexttile;
plot(1:nPeriods, irf_R, 'LineWidth', 2);
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





% Extracting the simulated data from Dynare's results
y_series = oo_.endo_simul(strmatch('y', M_.endo_names, 'exact'), :);
c_series = oo_.endo_simul(strmatch('c', M_.endo_names, 'exact'), :);
n_series = oo_.endo_simul(strmatch('n', M_.endo_names, 'exact'), :);
k_series = oo_.endo_simul(strmatch('k', M_.endo_names, 'exact'), :);
inv_series = oo_.endo_simul(strmatch('inv', M_.endo_names, 'exact'), :);
w_series = oo_.endo_simul(strmatch('w', M_.endo_names, 'exact'), :);
rk_series = oo_.endo_simul(strmatch('rk', M_.endo_names, 'exact'), :);
r_series = oo_.endo_simul(strmatch('r', M_.endo_names, 'exact'), :);

% Number of lags for ACF
nLags = 6;

% Create a figure using tiledlayout for a 3x3 grid
figure;
tiledlayout(3, 3);  % 3x3 grid for 9 variables

% Plot ACF for output (y)
nexttile;
autocorr(y_series, nLags);
title('ACF of Output (y)');

% Plot ACF for consumption (c)
nexttile;
autocorr(c_series, nLags);
title('ACF of Consumption (c)');

% Plot ACF for labor (n)
nexttile;
autocorr(n_series, nLags);
title('ACF of Labor (n)');

% Plot ACF for capital (k)
nexttile;
autocorr(k_serie, nLags);
title('ACF of Capital (k)');

% Plot ACF for investment (inv)
nexttile;
autocorr(inv_series, nLags);
title('ACF of Investment (inv)');

% Plot ACF for wages (w)
nexttile;
autocorr(w_series, nLags);
title('ACF of Wages (w)');

% Plot ACF for return on capital (rk)
nexttile;
autocorr(rk_series, nLags);
title('ACF of Return on Capital (rk)');

% Plot ACF for interest rate (r)
nexttile;
autocorr(r_series, nLags);
title('ACF of Interest Rate (r)');

% Adjust layout and add title for the entire figure
sgtitle('Autocorrelation Functions to Six Lags');