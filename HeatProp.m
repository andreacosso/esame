function HeatProp

%parametri fisici

eta = 0.2;
L = 0.5;
kappa = 100;


N = 101;
x = linspace(0.0,L,N);
dx = x(2) - x(1);
dt = (eta*dx^2)/kappa;

T0 = 20;
deltaT = 80;
T = T0 * ones(N,1);
T(1) = T(1) + deltaT;
t = 0;
tend = 1e-3;

f1 = figure;
f2 = figure;
T_plot = [];
t_plot = [];
while (t < tend)

    T_left = T(2);
    T(1) = T(1) + eta * (T(2)+T_left-2*T(1));
    T(2:N-1) = T(2:N-1) + eta * (T(3:N)+T(1:N-2)-2*T(2:N-1));
    


    set(0, 'CurrentFigure', f1);
    plot(x,T,"r");
    drawnow;


    T_plot(end+1) = T(20);
    t_plot(end+1) =  t;
    set(0, 'CurrentFigure', f2);
    plot(t_plot,T_plot,"g-");
    drawnow;
    t = t + dt;
  
end

