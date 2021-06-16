%Velocity Update
function [ particle ] = VelocityUpdate( pop_size, particle, Global)

%Inertia
w = 0.83;
 %If "w" is larger, the system has better global searching capability, and
 %less local searching capability (Zhou, 2016)


%Learning Factor
c1 = 0.8; %Personal Score
c2 = 0.5; %Global Score

for i=1:pop_size
    
    particle(i).Velocityi = (w * particle(i).Velocityi) + (c1 * rand(1) .* (particle(i).BestPosition - particle(i).Positioni )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Positioni));
    particle(i).Velocityi
    particle(i).Velocityj = (w * particle(i).Velocityj) + (c1 * rand(1) .* (particle(i).BestPosition - particle(i).Positionj )) + (c2 * rand(1) .* (Global.BestPosition-particle(i).Positionj));
    particle(i).Velocityj
end




end