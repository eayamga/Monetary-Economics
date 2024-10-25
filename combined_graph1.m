
% Creating a collection of all graphs in one graph

% Number of periods to plot
nPeriods = 14;

% Creating a figure using tiledlayout
figure;
tiledlayout(7, 2);  % 7x2 grid for 14 variables


%Loop to generate and plot 14 graphs
for i =  1:n_graphs
    % Creaate a subplot for each graph
    subplot(n_rows, n_cols, i);

    %Plotting demmeaned_cons
nexttile;
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

%Plotting demmeaned_inc
nexttile;
plot(dates, demeaned_inc, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned RGDP');
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


%Plotting demeaned_inv
nexttile;
plot(dates, demeaned_inv, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned investment');
title('Deemeaned investment with NBER recession regions');
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

%Bring the investment plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demmeaned_inf
nexttile;
plot(dates, demeaned_cons, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned inflation rate');
title('Deemeaned inflation rate with NBER recession regions');
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

%Bring the inflation rate plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demeaned_ffrate
nexttile;
plot(dates, demeaned_ffrate, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned federal funds rate');
title('Deemeaned federal funds rate with NBER recession regions');
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

%Bring the federaal funds rate plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting demeaned_wage
nexttile;
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


%Plotting demmeaned_hrwrked
nexttile;
plot(dates, demeaned_hrwrked, 'LineWidth', 2);
xlabel('Time');
ylabel('demeaned hours worked');
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


%Plotting cons
nexttile;
plot(dates, cycle, 'LineWidth', 2);
xlabel('Time');
ylabel('consumption');
title('Consumption with NBER recession regions');
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


%Plotting investment
nexttile;
plot(dates, cycle1, 'LineWidth', 2);
xlabel('Time');
ylabel('Investment');
title('Investment with NBER recession regions');
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

%Bring the investment plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting RGDP
nexttile;
plot(dates, cycle2, 'LineWidth', 2);
xlabel('Time');
ylabel('RGDP');
title('RGDP with NBER recession regions');
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


%Plotting hours worked
nexttile;
plot(dates, cycle3, 'LineWidth', 2);
xlabel('Time');
ylabel('Hours worked');
title('Hours worked with NBER recession regions');
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


%Plotting inflation rate
nexttile;
plot(dates, cycle4, 'LineWidth', 2);
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



%Plotting wage
nexttile;
plot(dates, cycle5, 'LineWidth', 2);
xlabel('Time');
ylabel('wage');
title('Wage with NBER recession regions');
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

%Bring the Wage plot to the front
uistack(findobj(gca, 'Type', 'line'), 'top');
hold off;


%Plotting federal funds rate
nexttile;
plot(dates, cycle6, 'LineWidth', 2);
xlabel('Time');
ylabel('federal funds rate');
title('federal funds rate with NBER recession regions');
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

% Adjust layout for better spacing
sgtitle('Graph of demeaned and detrended variables');

end



