%%metodo di gauss-seidel

function condensatore

delta = 100000; %variabile per criterio di convergenza 
epsilon = 0.00001; %errore 

M = 100;
delta_mat = zeros(M,M);

maxV_new = 1000000; %per la componente di errore relativo di "delta"


%% Problema di poisson
%data la carica matrice charge, calcolo il potenziale 


%{

e_0 = 8.854187e-12;
V_new = zeros(M,M);

q = 0.01;
charge = zeros(M,M);
charge(30,20:80) = -q;
charge(70,20:80) = q;


while(delta >= epsilon + epsilon * maxV_new)
    maxV_new = max(max(V_new));

    for i = 2:M-1 
        for j = 2:M-1
            vn = V_new(i,j);
            V_new(i,j) = 0.25*(V_new(i+1,j)+V_new(i-1,j)+V_new(i,j+1)+V_new(i,j-1))+ 1/(4*e_0)*charge(i,j);
            delta_mat(i,j) = abs(V_new(i,j)-vn);

        end
    end
    
    delta = max(max(delta_mat));
    %figure(f1);
    surfc(V_new);
    drawnow;
end

%}

%% Problema di laplace
% fissato il potenziale sulle armature calcolo il potenziale negli altri punti del piano
% per farlo andare commentare solo il ciclo while qui precedente




v = 100;
potential = zeros(M,M);
potential(30,20:80) = -v;
potential(70,20:80) = v;

f1 = figure;
f2 = figure;

while(delta >= epsilon + epsilon * maxV_new)
    maxV_new = max(max(potential));
    for i = 2:M-1    
        for j = 2:M-1
            if(i == 30 && j >= 20 && j <= 80 || i == 70 && j >= 20 && j <= 80)
                continue;
            end

            vn = potential(i,j);
            potential(i,j) = 0.25*(potential(i+1,j)+potential(i-1,j)+potential(i,j+1)+potential(i,j-1));
            delta_mat(i,j) = abs(potential(i,j)-vn);
        end
    end
    
    delta = max(max(delta_mat));
    figure(f1);
    surfc(potential);
    drawnow;

end



%{
[Ex, Ey] = - gradient(potential);
E_inside = E(50,50)
drawnow;
%}






