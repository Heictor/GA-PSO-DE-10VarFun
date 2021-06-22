%Global Best Update

function [ particle ] = GlobalBestUpdate( pop_size, particle, Global)
    %% For Loop
    for i=1:pop_size
        %% Conditional IF
        %Update Global Best
        if particle(i).Cost>Global.BestCost
            Global.BestCost = particle(i).BestCost;
        end
    end
end