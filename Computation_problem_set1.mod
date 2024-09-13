var c n k inv w R rk a y;  // Declare variables
varexo e_a;                // Technology shock

parameters bet gam phhi delt alph rhho sigm pssi target_n c_share inv_share;

bet = 0.99;    // Discount factor
gam = 1;      // CRRA coefficient
phhi = 2;        // Inverse Frisch elasticity
delt = 0.025;  // Depreciation rate
alph = 0.35;   // Capital share in production
rhho = 0.92;     // AR(1) persistence of technology shock
sigm = 0.04;   // Standard deviation of shock
target_n = 1/3; // Target for labor (38-hour workweek normalized)
c_share = 0.7;
inv_share = 0.3;



model(linear);
%log linearization of the production function
y=a + alph*k + (1- alph)*n;
%log linearization of the Euler equation
c=c(+1) -(bet/gam)*(R);
%log linearization of the capital law of motion
k=(1-delt)*k(-1) + delt*inv;
%log linearization of the labor supply condition
n=(1/phhi)*w - (gam/phhi)*c;
%log linearization of the income identity
y=c_share*c + inv_share*inv;
%log linearization of the firm maximization conditions
w=y - n;
rk=y - k(-1);
%Households budget Constraint
%inv=w*n+rk*k+Pi-c;
R=rk + delt -1;
%log linearization of the techology evolution process
a=rhho*a(-1) + e_a;
%endogenous y_hat c_hat inv_hat n_hat w_hat a_hat R k_hat;
%exogenous e_a;
end;

initval;
    a = 1;           // Initial technology level
    n = target_n;     // Set initial value of labor to target
    k = 10;          // Guess for capital
    c = 0.8;         // Guess for consumption
    inv = delt * k; // Investment, based on initial guess for k
    y = a*k^(alph)*n^(1-alph); // Output from Cobb-Douglas production function
    w =(1-alph)*y/n;       // Wage from production function
    rk = alph*y/k;            // Return on capital
end;

steady;

// Calibrate psi to match n = 1/3 in steady state
pssi = w / (n^phhi * c);

steady;


shocks;
var e_a; stderr 0.04;
end;





stoch_simul c n inv w rk R y k a;