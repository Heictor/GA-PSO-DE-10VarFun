%Population Initialization

%% Function
% The next line sets the function input and output variables.
function [ particle ] = PopulationInitialization( pop_size )
%% Parameters

%Solution Research Bounds
lb = -100; %Lower Bound
up = 100; %Upper Bound

%Initial Best Global Cost
Global.BestCost = [-1*inf]; %For minimization = inf, for maximization = -1*inf

%% For loop 
% The next for loop will go through each one of the particles in the
% population.
for i=1:pop_size
    
    %% Initial Position
    %Set the first positionX of a particle i as a random single number;
    particle(i).Position1 = unifrnd(lb, up, 1);
    particle(i).Position2 = unifrnd(lb, up, 1);
    particle(i).Position3 = unifrnd(lb, up, 1);
    particle(i).Position4 = unifrnd(lb, up, 1);
    particle(i).Position5 = unifrnd(lb, up, 1);
    particle(i).Position6 = unifrnd(lb, up, 1);
    particle(i).Position7 = unifrnd(lb, up, 1);
    particle(i).Position8 = unifrnd(lb, up, 1);
    particle(i).Position9 = unifrnd(lb, up, 1);
    particle(i).Position10 = unifrnd(lb, up, 1);
    
    %% Initial Velocity
    particle(i).Velocity1 = zeros(1);
    particle(i).Velocity2 = zeros(1);
    particle(i).Velocity3 = zeros(1);
    particle(i).Velocity4 = zeros(1);
    particle(i).Velocity5 = zeros(1);
    particle(i).Velocity6 = zeros(1);
    particle(i).Velocity7 = zeros(1);
    particle(i).Velocity8 = zeros(1);
    particle(i).Velocity9 = zeros(1);
    particle(i).Velocity10 = zeros(1);
    
    %% Particle Cost
    %The cost of each particle is their respective fitness value.
    %The input for fitness function is a vector with each position of the
    %particle in 1 of the 10 dimensions.
    particle(i).Cost = fitness([particle(i).Position1,...
                                particle(i).Position2,...
                                particle(i).Position3,...
                                particle(i).Position4,...
                                particle(i).Position5,...
                                particle(i).Position6,...
                                particle(i).Position7,...
                                particle(i).Position8,...
                                particle(i).Position9,...
                                particle(i).Position10]);
    
    %% Best Position
    particle(i).BestPosition1 = particle(i).Position1;
    particle(i).BestPosition2 = particle(i).Position2;
    particle(i).BestPosition3 = particle(i).Position3;
    particle(i).BestPosition4 = particle(i).Position4;
    particle(i).BestPosition5 = particle(i).Position5;
    particle(i).BestPosition6 = particle(i).Position6;
    particle(i).BestPosition7 = particle(i).Position7;
    particle(i).BestPosition8 = particle(i).Position8;
    particle(i).BestPosition9 = particle(i).Position9;
    particle(i).BestPosition10 = particle(i).Position10;
    
    %Best Cost
    particle(i).BestCost = particle(i).Cost;
    
    if particle(i).BestCost < 100
       Global.BestCost = particle(i).BestCost;
    end 
    
end

end