%Personal Best Update
function [ particle ] = PersonalBestUpdate( pop_size, particle)
    for i=1:pop_size
        %Update Personal Best
        if particle(i).Cost<particle(i).BestCost
            
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
            
            particle(i).BestCost = particle(i).Cost;
        end
    end
end