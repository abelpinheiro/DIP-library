% 16/04/2022 - @Abel Pinheiro de Figueiredo
% This script presents some of the most important and used signals

% Range value
t = (-5:0.01:5);

% Unit Step function | Heaviside Step function
% u(t) = 1 if t >= 0 | 0 if t < 0
u = inline('(t >= 0)', 't');
unitstep = t>=0;

% Unit Impulse function
% f(t) = 1 if t = 0 | 0 if t != 0
f = inline('(t == 0)', 't');
impulse = t==0;

% Unit Pulse function (combination of unit steps)
% p(t) = u(t) - u(t - 1)
p = inline('(t >= 0)&(t < 1)', 't');

% Ramp signal
ramp = t.*unitstep;

%TODO sinusoidal signals? Exponential signals?

% Plot signals
subplot(2,2,1);
plot(t, u(t));
xlabel('t');ylabel('u(t)');
axis([-2 2 -0.1 1.1]);
title('Unit Step');

subplot(2,2,2);
plot(t, f(t));
xlabel('t');ylabel('f(t)');
axis([-2 2 -0.1 1.1]);
title('Unit Impulse');

subplot(2,2,3);
plot(t, p(t));
xlabel('t');ylabel('p(t)');
axis([-2 2 -0.1 1.1]);
title('Unit Pulse');

subplot(2,2,4);
plot(t, ramp);
xlabel('t');ylabel('r(t)');
axis([-2 2 -0.1 2.5]);
title('Ramp');
