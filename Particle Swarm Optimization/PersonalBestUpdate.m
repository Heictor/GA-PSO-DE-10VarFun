%Personal Best Update
function [ particle ] = PersonalBestUpdate( pop_size, particle)
    for i=1:pop_size
        %Update Personal Best
        if particle(i).Cost<particle(i).BestCost
            particle(i).BestPositioni = particle(i).Positioni;
            particle(i).BestPositionj = particle(i).Positionj;
            particle(i).BestCost = particle(i).Cost;
        end
    end
end