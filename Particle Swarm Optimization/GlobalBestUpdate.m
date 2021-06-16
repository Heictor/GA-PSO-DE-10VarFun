%Global Best Update
function [ particle ] = GlobalBestUpdate( pop_size, particle, Global)
    for i=1:pop_size
        %Update Global Best
        if particle(i).Cost<Global.BestCost
            Global.Best = particle(i).BestCost;
        end
    end
end