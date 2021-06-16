%Particle Cost Update
function [ particle ] = ParticleCostUpdate( pop_size, particle)
    for i=1:pop_size
        %Update Particle Cost
        particle(i).Cost = fitness(particle(i).Positioni,particle(i).Positionj);
    end
end