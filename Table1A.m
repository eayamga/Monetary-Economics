%Replication of Smets and Wouters (2007) Tables 1A and 1B 
% Eric Ayamga


%Prior Distribution
selected_params = {'csadjcost', 'csigma', 'chabb', 'cprobw', 'csigl', 'cprobp', 'cindw', 'cindp', 'czcap', 'cfc', 'crpi', 'crr', 'cry', 'crdy', 'constebeta', 'calfa'}; % Replace with actual parameter names

% Extract prior information
prior_names = cellstr(M_.param_names); % Convert parameter names to cell array of strings
prior_means = oo_.prior.mean;    % Prior means
prior_stddev = sqrt(diag(oo_.prior.variance));    % Prior standard deviations






% Filter only the selected parameters
disp('Prior Distribution Information for Selected Parameters:');
disp('-------------------------------------------------------');
disp('Parameter   Mean       Std Dev');
for i = 1:length(selected_params)
    idx = find(strcmp(prior_names, selected_params{i})); % Find index of the parameter
    if ~isempty(idx)
        fprintf('%-10s %10.4f %10.4f\n', ...
            prior_names{idx}, ...
            prior_means(idx), ...
            prior_stddev(idx));
    else
       warning('Parameter "%s" not found in prior list.', selected_params{i});
    end
end






%Posterior modes
posterior_modes1 = oo_.posterior_mode.parameters.csadjcost;
posterior_modes2 = oo_.posterior_mode.parameters.csigma;
posterior_modes3 = oo_.posterior_mode.parameters.chabb;
posterior_modes4 = oo_.posterior_mode.parameters.cprobw;
posterior_modes5 = oo_.posterior_mode.parameters.csigl;
posterior_modes6 = oo_.posterior_mode.parameters.cprobp;
posterior_modes7 = oo_.posterior_mode.parameters.cindw;
posterior_modes8 = oo_.posterior_mode.parameters.cindp;
posterior_modes9 = oo_.posterior_mode.parameters.czcap;
posterior_modes10 = oo_.posterior_mode.parameters.cfc;
posterior_modes11 = oo_.posterior_mode.parameters.crpi;
posterior_modes12 = oo_.posterior_mode.parameters.crr;
posterior_modes13 = oo_.posterior_mode.parameters.cry;
posterior_modes14 = oo_.posterior_mode.parameters.crdy;
posterior_modes15 = oo_.posterior_mode.parameters.constebeta;
posterior_modes16 = oo_.posterior_mode.parameters.calfa;

posterior_modes = [posterior_modes1, posterior_modes2, posterior_modes3, posterior_modes4, posterior_modes5, posterior_modes6, posterior_modes7, posterior_modes8, posterior_modes9, posterior_modes10, posterior_modes11, posterior_modes12, posterior_modes13, posterior_modes14, posterior_modes15, posterior_modes16]; 
posterior_mode = posterior_modes';

%Posterior means
posterior_means1 = oo_.posterior_mean.parameters.csadjcost;
posterior_means2 = oo_.posterior_mean.parameters.csigma;
posterior_means3 = oo_.posterior_mean.parameters.chabb;
posterior_means4 = oo_.posterior_mean.parameters.cprobw;
posterior_means5 = oo_.posterior_mean.parameters.csigl;
posterior_means6 = oo_.posterior_mean.parameters.cprobp;
posterior_means7 = oo_.posterior_mean.parameters.cindw;
posterior_means8 = oo_.posterior_mean.parameters.cindp;
posterior_means9 = oo_.posterior_mean.parameters.czcap;
posterior_means10 = oo_.posterior_mean.parameters.cfc;
posterior_means11 = oo_.posterior_mean.parameters.crpi;
posterior_means12 = oo_.posterior_mean.parameters.crr;
posterior_means13 = oo_.posterior_mean.parameters.cry;
posterior_means14 = oo_.posterior_mean.parameters.crdy;
posterior_means15 = oo_.posterior_mean.parameters.constebeta;
posterior_means16 = oo_.posterior_mean.parameters.calfa;

posterior_means = [posterior_means1, posterior_means2, posterior_means3, posterior_means4, posterior_means5, posterior_means6, posterior_means7, posterior_means8, posterior_means9, posterior_means10, posterior_means11, posterior_means12, posterior_means13, posterior_means14, posterior_means15, posterior_means16];
posterior_mean = posterior_means';

%Posterior Standard deviations
posterior_stds1 = sqrt(diag(oo_.posterior_variance.parameters.csadjcost)); % Standard deviations
posterior_stds2 = sqrt(diag(oo_.posterior_variance.parameters.csigma)); % Standard deviations
posterior_stds3 = sqrt(diag(oo_.posterior_variance.parameters.chabb)); % Standard deviations
posterior_stds4 = sqrt(diag(oo_.posterior_variance.parameters.cprobw)); % Standard deviations
posterior_stds5 = sqrt(diag(oo_.posterior_variance.parameters.csigl)); % Standard deviations
posterior_stds6 = sqrt(diag(oo_.posterior_variance.parameters.cprobp)); % Standard deviations
posterior_stds7 = sqrt(diag(oo_.posterior_variance.parameters.cindw)); % Standard deviations
posterior_stds8 = sqrt(diag(oo_.posterior_variance.parameters.cindp)); % Standard deviations
posterior_stds9 = sqrt(diag(oo_.posterior_variance.parameters.czcap)); % Standard deviations
posterior_stds10 = sqrt(diag(oo_.posterior_variance.parameters.cfc)); % Standard deviations
posterior_stds11 = sqrt(diag(oo_.posterior_variance.parameters.crpi)); % Standard deviations
posterior_stds12 = sqrt(diag(oo_.posterior_variance.parameters.crr)); % Standard deviations
posterior_stds13 = sqrt(diag(oo_.posterior_variance.parameters.cry)); % Standard deviations
posterior_stds14 = sqrt(diag(oo_.posterior_variance.parameters.crdy)); % Standard deviations
posterior_stds15 = sqrt(diag(oo_.posterior_variance.parameters.constebeta)); % Standard deviations
posterior_stds16 = sqrt(diag(oo_.posterior_variance.parameters.calfa)); % Standard deviations

posterior_stds = [posterior_stds1, posterior_stds2, posterior_stds3, posterior_stds4, posterior_stds5, posterior_stds6, posterior_stds7, posterior_stds8, posterior_stds9, posterior_stds10, posterior_stds11, posterior_stds12, posterior_stds13, posterior_stds14, posterior_stds15, posterior_stds16];
posterior_std = posterior_stds';


%Lower Bound of the confidence interval
posterior_credible_intervals1 = oo_.posterior_hpdinf.parameters.csadjcost; % Lower bound of CI
posterior_credible_intervals2 = oo_.posterior_hpdinf.parameters.csigma; % Lower bound of CI
posterior_credible_intervals3 = oo_.posterior_hpdinf.parameters.chabb; % Lower bound of CI
posterior_credible_intervals4 = oo_.posterior_hpdinf.parameters.cprobw; % Lower bound of CI
posterior_credible_intervals5 = oo_.posterior_hpdinf.parameters.csigl; % Lower bound of CI
posterior_credible_intervals6 = oo_.posterior_hpdinf.parameters.cprobp; % Lower bound of CI
posterior_credible_intervals7 = oo_.posterior_hpdinf.parameters.cindw; % Lower bound of CI
posterior_credible_intervals8 = oo_.posterior_hpdinf.parameters.cindp; % Lower bound of CI
posterior_credible_intervals9 = oo_.posterior_hpdinf.parameters.czcap; % Lower bound of CI
posterior_credible_intervals10 = oo_.posterior_hpdinf.parameters.cfc; % Lower bound of CI
posterior_credible_intervals11 = oo_.posterior_hpdinf.parameters.crpi; % Lower bound of CI
posterior_credible_intervals12 = oo_.posterior_hpdinf.parameters.crr; % Lower bound of CI
posterior_credible_intervals13 = oo_.posterior_hpdinf.parameters.cry; % Lower bound of CI
posterior_credible_intervals14 = oo_.posterior_hpdinf.parameters.crdy; % Lower bound of CI
posterior_credible_intervals15 = oo_.posterior_hpdinf.parameters.constebeta; % Lower bound of CI
posterior_credible_intervals16 = oo_.posterior_hpdinf.parameters.calfa; % Lower bound of CI

posterior_credible_intervals(:, 1) = [posterior_credible_intervals1, posterior_credible_intervals2, posterior_credible_intervals3, posterior_credible_intervals4, posterior_credible_intervals5, posterior_credible_intervals6, posterior_credible_intervals7, posterior_credible_intervals8, posterior_credible_intervals9, posterior_credible_intervals10, posterior_credible_intervals11, posterior_credible_intervals12, posterior_credible_intervals13, posterior_credible_intervals14, posterior_credible_intervals15, posterior_credible_intervals16];
posterior_credible_interval(:, 1) = posterior_credible_intervals(:, 1)';


%Upper Bound of the confidence interval
posterior_credible_intervals1(:, 2) = oo_.posterior_hpdsup.parameters.csadjcost; % Upper bound of CI
posterior_credible_intervals2(:, 2) = oo_.posterior_hpdsup.parameters.csigma; % L
posterior_credible_intervals3(:, 2) = oo_.posterior_hpdsup.parameters.chabb;
posterior_credible_intervals4(:, 2) = oo_.posterior_hpdsup.parameters.cprobw;
posterior_credible_intervals5(:, 2) = oo_.posterior_hpdsup.parameters.csigl;
posterior_credible_intervals6(:, 2) = oo_.posterior_hpdsup.parameters.cprobp;
posterior_credible_intervals7(:, 2) = oo_.posterior_hpdsup.parameters.cindw;
posterior_credible_intervals8(:, 2) = oo_.posterior_hpdsup.parameters.cindp;
posterior_credible_intervals9(:, 2) = oo_.posterior_hpdsup.parameters.czcap;
posterior_credible_intervals10(:, 2) = oo_.posterior_hpdsup.parameters.cfc;
posterior_credible_intervals11(:, 2) = oo_.posterior_hpdsup.parameters.crpi;
posterior_credible_intervals12(:, 2) = oo_.posterior_hpdsup.parameters.crr;
posterior_credible_intervals13(:, 2) = oo_.posterior_hpdsup.parameters.cry;
posterior_credible_intervals14(:, 2) = oo_.posterior_hpdsup.parameters.crdy;
posterior_credible_intervals15(:, 2) = oo_.posterior_hpdsup.parameters.constebeta;
posterior_credible_intervals16(:, 2) = oo_.posterior_hpdsup.parameters.calfa;

posterior_credible_intervals(:, 2) = [posterior_credible_intervals1(:, 2), posterior_credible_intervals2(:, 2), posterior_credible_intervals3(:, 2), posterior_credible_intervals4(:, 2), posterior_credible_intervals5(:, 2), posterior_credible_intervals6(:, 2), posterior_credible_intervals7(:, 2), posterior_credible_intervals8(:, 2), posterior_credible_intervals9(:, 2), posterior_credible_intervals10(:, 2), posterior_credible_intervals11(:, 2), posterior_credible_intervals12(:, 2), posterior_credible_intervals13(:, 2), posterior_credible_intervals14(:, 2), posterior_credible_intervals15(:, 2), posterior_credible_intervals16(:, 2)];
posterior_credible_interval(:, 2) = posterior_credible_intervals(:, 2)';



% Create a table with all the information
T = table(prior_names, ...
    prior_means, prior_stddev, ...
    posterior_mean, posterior_std, posterior_mode, ...
    posterior_credible_interval(:, 1), posterior_credible_interval(:, 2), ...
    'VariableNames', {'Parameter', 'Prior Distribution', 'Prior Mean', 'Prior Std', ...
   'Posterior Mean', 'Posterior Std', 'CI Lower', 'CI Upper'});




% Display the table
disp(T);

% Save table to an Excel file
writetable(T, 'Bayesian_Estimation_Results.xlsx', 'WriteVariableNames', true);


