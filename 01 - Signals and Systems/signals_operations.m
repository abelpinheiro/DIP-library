% 18/04/2022 - @Abel Pinheiro de Figueiredo
% This script presents a few useful operations with signals

% Discrete Time Signal
n = [-1 0 1 2 3];
x = [1 0 4 6 -2];
factor = 5;

% Shifting operation | delay/advanced signal
shift = n - factor;

% Reversing operation
reverse = (-1) * n;

% Scaling operation 
% uncompression
scale2 = n * factor;
% compression
scale = n / factor;

subplot(5,2,1);
stem(n,x);
axis([-7 16 -3 7]);
title('signal x(n)');

subplot(5,2,2);
stem(shift,x);
axis([-7 -1 -3 7]);
title('delayed signal x(n - 5)');

subplot(5,2,3);
stem(scale,x);
axis([-7 16 -3 7]);
title('compressed signal x(n) / 5');

subplot(5,2,4);
stem(reverse,x);
axis([-7 16 -3 7]);
title('reversed signal x(-n)');

subplot(5,2,5);
stem(scale2,x);
axis([-7 16 -3 7]);
title('uncompressed signal x(n) * 5');

%% com imagens
