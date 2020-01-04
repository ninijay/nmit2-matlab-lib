function [x,y] = VierRungeKutta(f, a, b, y0, n)
    h = (b-a)/n;
    x = [a:h:b];
    y = [y0: zeros(n-1)];
    
    for i = 1:n
        k1 = f(x(i), y(i));
        k2 = f(x(i) + h/2, y(i) + h*k1/2);
        k3 = f(x(i) + h/2, y(i) + h*k2/2);
        k4 = f(x(i) + h, y(i) + h*k3);
        y(i+1) = y(i) + h * (k1 + 2*k2 + 2*k3 + k4) / 6;
    end
end