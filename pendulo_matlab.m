
T = [0, 20];
X0 = [0, 0, pi/180, 0];
[t, x] = ode45(@Dinamica, T, X0);
    
figure
plot(t, x(:,1), 'LineWidth', 0.5)
hold on
plot(t, x(:,3), 'LineWidth', 0.5)
grid on
legend('x1(t)', 'x3(t)')
xlabel('Tiempo (s)')
ylabel('Estados')