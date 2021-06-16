%Position Update
function [ particle ] = PositionUpdate( pop_size, particle)
    for i=1:pop_size
        particle(i).Positioni = particle(i).Positioni + particle(i).Velocityi;
        particle(i).Positionj = particle(i).Positionj + particle(i).Velocityj;
    end
end