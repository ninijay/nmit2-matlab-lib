%% Verändertes (besseres) Euler Verfahren
% Berechnet Lösung für dz/dt = @(t,z) t.^2 + 0.1 .* z
% f = funktion Bsp: @(t,z) t.^2 + 0.1 .* z
% a = Anfangswert Bsp: -1.5
% b = letzter Wert Bsp: 1.5
% y0 = Lösung des Anfangswertproblems Bsp: 0
% n = Anzahl Schritte Bsp: 5
% Beispiel: diffEuler(@(t,z) t.^2 + 0.1 .* z, -1.5, 1-5, 0, 5)
function [x,y] = diffModEuler(f, a, b, y0, n)
    h= (b-a)/n;
    x = [a:h:b];
    y = [y0: zeros(n-1)];
    
    for i = 1:n
        yEuler = y(i) + h * f(x(i), y(i));
        k1 = f(x(i), y(i));
        k2 = f(x(i+1), yEuler);
        y(i+1) = y(i) + h * (k1 + k2) / 2;
    end
end