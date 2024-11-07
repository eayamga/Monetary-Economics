

% Creating a collection of all graphs in one graph

% Number of periods to plot
nPeriods = 4;

% Creating a figure using tiledlayout
figure;
tiledlayout(2, 2);  % 2x2 grid for 4 variables


%Plotting hrwrked
nexttile;
plot(dates, hrwrked, 'LineWidth', 2);
xlabel('Time');
ylabel('Hours Worked');
title('Hours Worked with NBER recession regions');
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

%Bring the Hours Worked plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting inflation
nexttile;
plot(dates, inf, 'LineWidth', 2);
xlabel('Time');
ylabel('Inflation rate');
title('Inflation rate with NBER recession regions');
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


%Plotting hrwrked1
nexttile;
plot(dates, hrwrked, 'LineWidth', 2);
xlabel('Time');
ylabel('Hours Worked');
title('Hours Worked with NBER recession regions');
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

%Bring the Hours Worked plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting inflation
nexttile;
plot(dates, inf_cpi, 'LineWidth', 2);
xlabel('Time');
ylabel('CPI inflation rate');
title('CPI inflation rate with NBER recession regions');
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

%Bring the CPI inflation rate plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;

% Adjust layout for better spacing
sgtitle('Graph of demeaned and detrended variables');

end
