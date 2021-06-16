%fitness
function [score] = fitness(i,j)

score = (0.5-((((sin (sqrt (i.^2+j.^2) )).^2) - 0.5)/...
    (1 + 0.001*(i.^2+j.^2)).^2));

end