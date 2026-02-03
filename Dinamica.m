

function dx = Dinamica(t, x)

    dx = zeros(4,1);

    Ip = 0.0079;  Mc = 0.7031; lp = 0.3302; Mp = 0.23;
    Fc = 0;  Beq = 4.3;  g = 9.81;  Bp = 0.0024;
    
    numerador1 = (Ip + Mp*lp^2) * Fc ...
       + Mp^2*lp^2*g*cos(x(3))*sin(x(3)) ...
       - (Ip + Mp*lp^2)*Beq*x(2)...
       - (Ip*Mp*lp - Mp^2*lp^3)*x(4)^2*sin(x(3)) ...
       - Mp*lp*x(4)*cos(x(3))*Bp;

    numerador2 = (Mc + Mp)*Mp*g*lp*sin(x(3)) ...
       - (Mc + Mp)*Bp*x(4) ...
       - Fc*Mp*lp*cos(x(3)) ...
       - Mp^2*lp^2*x(4)^2*sin(x(3))*cos(x(3)) ...
       - Beq*Mp*lp*x(2)*cos(x(3));

    denominador = (Mc+Mp)*Ip + Mc*Mp*lp^2 + Mp^2*lp^2*sin(x(3))^2;
    
    dx(1) = x(2);

    dx(2) = numerador1/denominador;

    dx(3) = x(4);

    dx(4) = numerador2/denominador;

end    