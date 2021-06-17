%Velocity Update
function [ particle ] = VelocityUpdate( pop_size, particle, Global)

%Inertia
w = 0.6;
 %If "w" is larger, the system has better global searching capability, and
 %less local searching capability (Zhou, 2016)


%Learning Factor
c1 = 2; %Personal Score
c2 = 2; %Global Score

for i=1:pop_size
    
    particle(i).Velocity1 = (w * particle(i).Velocity1) + (c1 * rand(1) .* (particle(i).BestPosition1 - particle(i).Position1 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position1));
    particle(i).Velocity2 = (w * particle(i).Velocity2) + (c1 * rand(1) .* (particle(i).BestPosition2 - particle(i).Position2 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position2));
    particle(i).Velocity3 = (w * particle(i).Velocity3) + (c1 * rand(1) .* (particle(i).BestPosition3 - particle(i).Position3 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position3));
    particle(i).Velocity4 = (w * particle(i).Velocity4) + (c1 * rand(1) .* (particle(i).BestPosition4 - particle(i).Position4 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position4));
    particle(i).Velocity5 = (w * particle(i).Velocity5) + (c1 * rand(1) .* (particle(i).BestPosition5 - particle(i).Position5 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position5));
    particle(i).Velocity6 = (w * particle(i).Velocity6) + (c1 * rand(1) .* (particle(i).BestPosition6 - particle(i).Position6 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position6));
    particle(i).Velocity7 = (w * particle(i).Velocity7) + (c1 * rand(1) .* (particle(i).BestPosition7 - particle(i).Position7 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position7));
    particle(i).Velocity8 = (w * particle(i).Velocity8) + (c1 * rand(1) .* (particle(i).BestPosition8 - particle(i).Position8 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position8));
    particle(i).Velocity9 = (w * particle(i).Velocity9) + (c1 * rand(1) .* (particle(i).BestPosition9 - particle(i).Position9 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position9));
    particle(i).Velocity10 = (w * particle(i).Velocity10) + (c1 * rand(1) .* (particle(i).BestPosition10 - particle(i).Position10 )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Position10));
end




end