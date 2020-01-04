function [x, y] = diffEuler(f, a, b, y0, n)
    h = (b-a)/n;
    x = [a:h:b];
    y = [y0: zeros(n-1)];
    for i = 1:n 
        y(i+1) = y(i) + h .* f(x(i), y(i));
    end
    
    
end