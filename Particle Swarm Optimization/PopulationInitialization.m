%Population Initialization
function [ particle ] = PopulationInitialization( pop_size )

%Bounds
lb = -10; %Lower Bound
up = 10; %Upper Bound


Global.BestCost = [-1*inf]; %For minimization = inf, for maximization = -1*inf
for i=1:pop_size
    %Initial Position
    particle(i).Positioni = unifrnd(lb, up, 1);
    particle(i).Positionj = unifrnd(lb, up, 1);
    particle(i).Velocityi = zeros(1);
    particle(i).Velocityj = zeros(1);
    particle(i).Cost = fitness(particle(i).Positioni,particle(i).Positionj);
    
    
    particle(i).BestPosition = particle(i).Positioni;
    particle(i).BestCost = particle(i).Cost;
    
    if particle(i).BestCost < Inf
       Global.BestCost = particle(i).BestCost;
    end 
    
end

end