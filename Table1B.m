%Replication of Smets and Wouters (2007) Tables 1A and 1B 
% Eric Ayamga

%Prior Distribution
% Define the parameters of interest
selected_parameters = {'crhoa', 'crhog', 'crhob', 'crhoqs', 'crhoms', 'crhopinf', 'crhow'}; % Replace with actual parameter names

% Extract prior information
prior_names = cellstr(M_.param_names); % Convert parameter names to cell array of strings
prior_means = oo_.prior.mean;    % Prior means
prior_stddev = sqrt(diag(oo_.prior.variance));    % Prior standard deviations

% Filter only the selected parameters
disp('Prior Distribution Information for Selected Parameters:');
disp('-------------------------------------------------------');
disp('Parameter   Mean       Std Dev');
for i = 1:length(selected_parameters)
    idx = find(strcmp(prior_names, selected_parameters{i})); % Find index of the parameter
    if ~isempty(idx)
        fprintf('%-10s %10.4f %10.4f\n', ...
            prior_names{idx}, ...
            prior_means(idx), ...
            prior_stddev(idx));
    else
        warning('Parameter "%s" not found in prior list.', selected_parameters{i});
    end
end




%Posterior modes
posterior_modes1 = oo_.posterior_mode.parameters.crhoa;
posterior_modes2 = oo_.posterior_mode.parameters.crhog;
posterior_modes3 = oo_.posterior_mode.parameters.crhob;
posterior_modes4 = oo_.posterior_mode.parameters.crhoqs;
posterior_modes5 = oo_.posterior_mode.parameters.crhoms;
posterior_modes5 = oo_.posterior_mode.parameters.crhopinf;
posterior_modes7 = oo_.posterior_mode.parameters.crhow;
posterior_modes8 = oo_.posterior_mode.shocks_std.ea;
posterior_modes9 = oo_.posterior_mode.shocks_std.eqs;
posterior_modes10 = oo_.posterior_mode.shocks_std.eb;
posterior_modes11 = oo_.posterior_mode.shocks_std.eg;
posterior_modes12 = oo_.posterior_mode.shocks_std.em;
posterior_modes13 = oo_.posterior_mode.shocks_std.ew;
posterior_modes14 = oo_.posterior_mode.shocks_std.epinf;

posterior_modes = [posterior_modes1, posterior_modes2, posterior_modes3, posterior_modes4, posterior_modes5, posterior_modes6, posterior_modes7, posterior_modes8, posterior_modes9, posterior_modes10, posterior_modes11, posterior_modes12, posterior_modes13, posterior_modes14]; 
posterior_mode = posterior_modes';



%Posterior means
posterior_means1 = oo_.posterior_mean.parameters.crhoa;
posterior_means2 = oo_.posterior_mean.parameters.crhog;
posterior_means3 = oo_.posterior_mean.parameters.crhob;
posterior_means4 = oo_.posterior_mean.parameters.crhoqs;
posterior_means5 = oo_.posterior_mean.parameters.crhoms;
posterior_means6 = oo_.posterior_mean.parameters.crhopinf;
posterior_means7 = oo_.posterior_mean.parameters.crhow;
posterior_means8 = oo_.posterior_mean.shocks_std.ea;
posterior_means9 = oo_.posterior_mean.shocks_std.eqs;
posterior_means10 = oo_.posterior_mean.shocks_std.eb;
posterior_means11 = oo_.posterior_mean.shocks_std.eg;
posterior_means12 = oo_.posterior_mean.shocks_std.em;
posterior_means13 = oo_.posterior_mean.shocks_std.ew;
posterior_means14 = oo_.posterior_mean.shocks_std.epinf;

posterior_means = [posterior_means1, posterior_means2, posterior_means3, posterior_means4, posterior_means5, posterior_means6, posterior_means7, posterior_means8, posterior_means9, posterior_means10, posterior_means11, posterior_means12, posterior_means13, posterior_means14];
posterior_mean = posterior_means';


%Posterior standard deviation
posterior_stds1 = sqrt(diag(oo_.posterior_variance.parameters.crhoa));
posterior_stds2 = sqrt(diag(oo_.posterior_variance.parameters.crhog));
posterior_stds3 = sqrt(diag(oo_.posterior_variance.parameters.crhob));
posterior_stds4 = sqrt(diag(oo_.posterior_variance.parameters.crhoqs));
posterior_stds5 = sqrt(diag(oo_.posterior_variance.parameters.crhoms));
posterior_stds6 = sqrt(diag(oo_.posterior_variance.parameters.crhopinf));
posterior_stds7 = sqrt(diag(oo_.posterior_variance.parameters.crhow));
posterior_stds8 = sqrt(diag(oo_.posterior_variance.shocks_std.ea));
posterior_stds9 = sqrt(diag(oo_.posterior_variance.shocks_std.eqs));
posterior_stds10 = sqrt(diag(oo_.posterior_variance.shocks_std.eb));
posterior_stds11 = sqrt(diag(oo_.posterior_variance.shocks_std.em));
posterior_stds12 = sqrt(diag(oo_.posterior_variance.shocks_std.eg));
posterior_stds13 = sqrt(diag(oo_.posterior_variance.shocks_std.ew));
posterior_stds14 = sqrt(diag(oo_.posterior_variance.shocks_std.epinf));

posterior_stds = [posterior_stds1, posterior_stds2, posterior_stds3, posterior_stds4, posterior_stds5, posterior_stds6, posterior_stds7, posterior_stds8, posterior_stds9, posterior_stds10, posterior_stds11, posterior_stds12, posterior_stds13, posterior_stds14];
posterior_std = posterior_stds';



%Lower Bound of the confidence interval
posterior_credible_intervals1 = oo_.posterior_hpdinf.parameters.crhoa;
posterior_credible_intervals2 = oo_.posterior_hpdinf.parameters.crhog;
posterior_credible_intervals3 = oo_.posterior_hpdinf.parameters.crhob;
posterior_credible_intervals4 = oo_.posterior_hpdinf.parameters.crhoqs;
posterior_credible_intervals5 = oo_.posterior_hpdinf.parameters.crhoms;
posterior_credible_intervals6 = oo_.posterior_hpdinf.parameters.crhopinf;
posterior_credible_intervals7 = oo_.posterior_hpdinf.parameters.crhow;
posterior_credible_intervals8 = oo_.posterior_hpdinf.shocks_std.ea;
posterior_credible_intervals9 = oo_.posterior_hpdinf.shocks_std.eqs;
posterior_credible_intervals10 = oo_.posterior_hpdinf.shocks_std.eb;
posterior_credible_intervals11 = oo_.posterior_hpdinf.shocks_std.eg;
posterior_credible_intervals12 = oo_.posterior_hpdinf.shocks_std.ew;
posterior_credible_intervals13 = oo_.posterior_hpdinf.shocks_std.em;
posterior_credible_intervals14 = oo_.posterior_hpdinf.shocks_std.epinf;

posterior_credible_intervals(:, 1) = [posterior_credible_intervals1, posterior_credible_intervals2, posterior_credible_intervals3, posterior_credible_intervals4, posterior_credible_intervals5, posterior_credible_intervals6, posterior_credible_intervals7, posterior_credible_intervals8, posterior_credible_intervals9, posterior_credible_intervals10, posterior_credible_intervals11, posterior_credible_intervals12, posterior_credible_intervals13, posterior_credible_intervals14];
posterior_credible_interval(:, 1) = posterior_credible_intervals(:, 1)';


%Upper Bound of the confidence interval
posterior_credible_intervals1(:, 2) = oo_.posterior_hpdsup.parameters.crhoa;
posterior_credible_intervals2(:, 2) = oo_.posterior_hpdsup.parameters.crhog;
posterior_credible_intervals3(:, 2) = oo_.posterior_hpdsup.parameters.crhob;
posterior_credible_intervals4(:, 2) = oo_.posterior_hpdsup.parameters.crhoqs;
posterior_credible_intervals5(:, 2) = oo_.posterior_hpdsup.parameters.crhoms;
posterior_credible_intervals6(:, 2) = oo_.posterior_hpdsup.parameters.crhopinf;
posterior_credible_intervals7(:, 2) = oo_.posterior_hpdsup.parameters.crhow;
posterior_credible_intervals8(:, 2) = oo_.posterior_hpdsup.shocks_std.ea;
posterior_credible_intervals9(:, 2) = oo_.posterior_hpdsup.shocks_std.eqs;
posterior_credible_intervals10(:, 2) = oo_.posterior_hpdsup.shocks_std.eb;
posterior_credible_intervals11(:, 2) = oo_.posterior_hpdsup.shocks_std.em;
posterior_credible_intervals12(:, 2) = oo_.posterior_hpdsup.shocks_std.ew;
posterior_credible_intervals13(:, 2) = oo_.posterior_hpdsup.shocks_std.eg;
posterior_credible_intervals14(:, 2) = oo_.posterior_hpdsup.shocks_std.epinf;

posterior_credible_intervals(:, 2) = [posterior_credible_intervals1(:, 2), posterior_credible_intervals2(:, 2), posterior_credible_intervals3(:, 2), posterior_credible_intervals4(:, 2), posterior_credible_intervals5(:, 2), posterior_credible_intervals6(:, 2), posterior_credible_intervals7(:, 2), posterior_credible_intervals8(:, 2), posterior_credible_intervals9(:, 2), posterior_credible_intervals10(:, 2), posterior_credible_intervals11(:, 2), posterior_credible_intervals12(:, 2), posterior_credible_intervals13(:, 2), posterior_credible_intervals14(:, 2)];
posterior_credible_interval(:, 2) = posterior_credible_intervals(:, 2)';




% Create Table 1B
Table1B = table(shock_names', prior_distr_shocks', prior_means_shocks', ...
                posterior_modes_shocks', posterior_means_shocks', ...
                posterior_5th_shocks', posterior_95th_shocks', ...
                'VariableNames', {'Shock', 'PriorDistr', 'PriorMean', ...
                                  'PostMode', 'PostMean', 'Post5Percent', 'Post95Percent'});

disp('Table 1B: Prior and Posterior Distribution of Shock Processes');
disp(Table1B);