close all;
clear all;
clc;

%rng default;


pop_size = 5; %Population Size
cycles = 5; %Quantity of cicles (iterations)


%Inertia
w = 1;

%Accelation Factors
c1 = 1.5;
c2 = 2.0;

%Setting Initial Variable (Struct with parameters)
Initial.Pos = []; %Position
Initial.Cost = []; %Cost
Initial.Veli = []; %Velocity
Initial.BPos = []; %Best Position
Initial.BestCost = []; %Best Cost

%Setting Global Variable (Struct with parameters)
Global.BestCost = inf;
Global.BestPosition = [0];

%Initializing the population
[particle] = PopulationInitialization(pop_size);

%particle = repmat(Initial,pop_size,1)


[particle] = VelocityUpdate( pop_size, particle, Global );
part = [];
colors = ['r','g','b','y','m','c'];
marker = ['o','+','*','x','d'];

figure(1)
hold on
f1 = -50:.1:50;
f2 = -50:.1:50;
[f1,f2] = meshgrid(f1,f2);
f = (0.5 - (((sin (sqrt (f1.^2+f2.^2) )).^2) - 0.5)./(1 + 0.001.*(f1.^2+f2.^2)).^2);
surf(f1,f2,f,'EdgeColor','none');
colormap(winter);
%colormap(hsv);
colorbar;
shading interp;
alpha 0.01;

for i=1:cycles

    for j=1:pop_size
       [particle] = VelocityUpdate( pop_size, particle, Global );
       [particle] = PositionUpdate( pop_size, particle );
       [particle] = PersonalBestUpdate( pop_size, particle );
       [particle] = GlobalBestUpdate( pop_size, particle, Global );
       [particle] = ParticleCostUpdate( pop_size, particle )
       %particle(j)
       scatter3( [particle.Positioni] , [particle.Positionj] , [particle.Cost] , colors(i) , marker(i) )
       drawnow
       
    end
%     pbest
%     vbest
    
    legend show
    grid on
    
     
    
%     figure(2)
%     hold on
%     x = 1:1:1;
%     y = particle(1).BestCost;
%     m = ['o','+','*','x','d']
%     scatter(x,[particle.BestCost],m(i))
%     legend('1','2','3','4','5')
%     grid on
%     hold off

end

hold off




