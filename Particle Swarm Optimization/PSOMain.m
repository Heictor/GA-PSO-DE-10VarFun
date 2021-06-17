close all;
clear all;
clc;

%rng default;


pop_size = 100; %Population Size
cycles = 10; %Quantity of cicles (iterations)


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
Global.BestCost = [-1*inf];
Global.BestPosition = [0];

%Initializing the population
[particle] = PopulationInitialization(pop_size);

%particle = repmat(Initial,pop_size,1)


[particle] = VelocityUpdate( pop_size, particle, Global );


figure(1)
hold on
grid on
markers = ['o','+','*','.','x','s','d','^','p','h'];
colors = ['r','g','b','c','m','y','k','w','r','g'];
for i=1:cycles
    fprintf('Cycle %d \n',i)
    for j=1:pop_size
       [particle] = VelocityUpdate( pop_size, particle, Global );
       [particle] = PositionUpdate( pop_size, particle );
       [particle] = PersonalBestUpdate( pop_size, particle );
       [particle] = GlobalBestUpdate( pop_size, particle, Global );
       [particle] = ParticleCostUpdate( pop_size, particle );
       
       %sz = 25;
%        scatter(j,particle(j).BestCost,...
%            colors(i),...
%            markers(i),...
%            'filled')
%        drawnow
       
       fprintf('Current cost of particle %d = %f\n',j,Global.BestCost)
       fprintf('Current best cost of particle %d = %f\n',j,particle(j).BestCost)
       fprintf('\n')
    end
    
end
hold off






