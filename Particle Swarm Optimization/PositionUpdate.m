%Position Update
function [ particle ] = PositionUpdate( pop_size, particle)
    for i=1:pop_size
        
        particle(i).Position1 = particle(i).Position1 + particle(i).Velocity1;
        particle(i).Position2 = particle(i).Position2 + particle(i).Velocity2;
        particle(i).Position3 = particle(i).Position3 + particle(i).Velocity3;
        particle(i).Position4 = particle(i).Position4 + particle(i).Velocity4;
        particle(i).Position5 = particle(i).Position5 + particle(i).Velocity5;
        particle(i).Position6 = particle(i).Position6 + particle(i).Velocity6;
        particle(i).Position7 = particle(i).Position7 + particle(i).Velocity7;
        particle(i).Position8 = particle(i).Position8 + particle(i).Velocity8;
        particle(i).Position9 = particle(i).Position9 + particle(i).Velocity9;
        particle(i).Position10 = particle(i).Position10 + particle(i).Velocity10;
        
        
    end
end