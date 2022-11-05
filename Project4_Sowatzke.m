sigma = 1;
mu = 0;
x0 = 1;
dx = 0.25;
x = -3:0.001:3;
fx = 1/(sigma*sqrt(2*pi))*exp(-(x-mu).^2/(2*sigma.^2));
fx0 = fx(find(x==x0,1));
x1 = x0 + dx;
figure(1);
clf;
hold on;
plot(x,fx,'k');
line([x0 x0],[0 fx0],'Color','k');
line([x1 x1],[0,fx0],'Color','k');
line([x0 x1],[fx0 fx0],'Color','k');
line([x0 x1],[0 0],'Color','k');
area([x0 x0 x1 x1],[0 fx0 fx0 0]);
xticks([x0 x1]);
yticks([]);
xticklabels({'x ','     x+dx'});
text(x0,fx0+0.02,'f_X(x)')
box on;
title('$\mathbf{P(\{x < X \leq x+dx\})}$','interpreter','latex')
% title('P(\{x < X \leq x+dx\})','interpreter','tex')