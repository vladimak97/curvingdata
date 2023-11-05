% Curving Data

% Obtain the similar curving fit data using polyfit and polyval:

x = [14.2, 16.4, 11.9, 15.2, 18.5, 22.1, 19.4, 25.1, 23.4, 18.1, 22.6, 17.2];
y = [215, 325, 185, 332, 406, 522, 412, 614, 544, 421, 445, 408];

coeff = polyfit(x, y, 1);
y_fit = polyval(coeff, x);

plot(x, y, 'r+', x, y_fit);
grid on;
xlabel('x-data');
ylabel('y-data');
title('Basic curve-fitting');
legend('Original data', 'Line of best fit', 'Location', 'SouthEast');
