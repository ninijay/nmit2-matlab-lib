function [x,y] = diffMittelpunkt(f, a, b, y0, n)
    h = (b-a)/n;
    x = [a:h:b];
    y = [y0: zeros(n-1)];
    
    for i = 1:n
        h2 = h/2;
        xh2 = x(i) + h2;
        yh2 = y(i) + h2 * f(x(i), y(i));
        y(i+1) = y(i) + h * f(xh2, yh2);
    end
end