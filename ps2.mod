% Computational Problem Set II
% Monetary Economics
% By Eric Ayamga

%Declaration of variables

var c n rk r u q inv k w y a pi i mc m;

% Declaring exogenous variables (shocks). Here we have only two shocks
% productivity shock e_a and monetary policy shock e_m

varexo e_a e_m;

%Declaring of parameters and parameter values
parameters betta lamda gama phhi pssi deltta alph rho_a rho_m sigma_a sigma_m zeta_pi zeta_y xi_p xi_w rho_i eta_w adj_ii kappa_p kappa_w omega;

betta = 0.99;           % Discount factor
lamda = 0.75;           % Habit formation in consumption
gama = 1;               % Risk aversion (intertemporal elasticity of substitution)
phhi = 1.25;            % Inverse Frisch elasticity of labor supply
deltta = 0.025;         % Depreciation rate
alph = 0.35;            % Capital share
rho_a = 0.92;           % AR(1) parameter for technology shock
rho_m = 0.4;            % AR(1) parameter for monetary policy shock
sigma_a = 0.04;         % Std dev of technology shock
sigma_m = 0.1;          % Std dev of monetary policy shock
zeta_pi = 1.5;          % Taylor rule coefficient on inflation
zeta_y = 0.1;           % Taylor rule coefficient on output
xi_p = 0.6;             % Probability of not adjusting prices (Calvo pricing)
xi_w = 0.9;             % Probability of not adjusting wages (Calvo wage setting)
rho_i = 0.78;           % Weight on interest rate 
eta_w = 2.1;            % Elasticity of substitution between labor types
adj_ii = 5;             % Second order derivative of investment adjustment cost
omega = 1.6;            % Weight on disutility of labor
kappa_p = (1 - xi_p) * (1 - betta * xi_p) / xi_p;  % Price Phillips curve slope
kappa_w = (1 - xi_w) * (1 - betta * xi_w) / xi_w;  % Wage Phillips curve slope

% Model Block
model(linear);
% Log-linearized Euler equation
c = lamda * c(-1) + (c(+1) - lamda * c) - (1 /gama) * r;
    
% Labor supply equation
w = gama * (c - lamda * c(-1)) + phhi * n;
    
% Capital accumulation equation (log-linearized)
k = (1 - deltta) * k(-1) + deltta * inv;

%Investment (Tobin's q)
q = adj_ii*(inv - inv(-1)) - betta*adj_ii*(inv(+1) - inv);

%wage equation
w = y - n;

%capital rental rate
rk = y - k(-1);

%Output function
y  = a + alph*u + alph*k(-1) + (1-alph)*n;

% Interest rule
r = rk + deltta; 

%Goods market clearing condition
y = c + inv + u + k(-1);

%Monetary policy rule
i = rho_i * (i(-1) - i) + (1-rho_i) * (zeta_pi * pi + zeta_y *( y - y(-1))) + m;

%New Keynesian Philips curve
pi = kappa_p * mc + betta * pi(+1);

%marginal cost
mc = (w - a) - (1-alph) * y;

%wage setting
w = betta*w(+1) + kappa_w * (w - phhi * n);

%Fisher equation
i = r + pi;

%Technology shock process
a = rho_a * a(-1) + e_a;

%Monetary shock process
m = rho_m * m(-1) + e_m;

end;

% Shocks
shocks;
    var e_a; stderr sigma_a;
    
    var e_m; stderr sigma_m;
end;

% Initial values (steady state deviations are zero in log-linearized models)
initval;
    c = 0;
    k = 0;
    inv = 0;
    n = 0;
    pi = 0;
    w = 0;
    r = 0;
    y = 0;
    mc = 0;
    a = 0;
    m = 0;
end;

% Simulate the model
stoch_simul y c inv n r w a;