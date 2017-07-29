t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t, y1);
y2 = cos(2*pi*4*t);
plot(t, y2);

% add plots on top
plot(t, y1);
hold on;  % allow to put figures on top of existing plot
plot(t, y2, 'r'); % 'r' = draw line in red
xlabel('time');
ylabel('value');
legend('sin', 'cos')
title('QUALITY PLOT')
print -dpng 'myPLOT.png'
close   % closes current plot

% show plots on different figures
figure(1); plot(t, y1); % create figure 1, show plot y1 on it
figure(2); plot(t, y2); % create figure 2, show plot y2 on it
close

% show plots in same figure, in a grid
subplot(1, 2, 1); % divide plot in 1x2 grid, access first element
plot(t, y1);
subplot(1, 2, 2);
plot(t, y2);
axis([0.5 1 -1 1]); % changes the plot axis ranges

clf; % clears figure
close;

% visualize matrix
A = magic(5);
imagesc(A); % plot by colors, each color a different matrix value
imagesc(A), colorbar, colormap gray; % colorbar shows the different values heat
