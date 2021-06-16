%% Código para a plotagem da Função F6 de Schaffer
clc, clear, close all

%x = -100:.1:100;
% x1 = -100:.1:100;
% x2 = -100:.1:100;
% x3 = -100:.1:100;
% x4 = -100:.1:100;
% x5 = -100:.1:100;
% x6 = -100:.1:100;
% x7 = -100:.1:100;
% x8 = -100:.1:100;
% x9 = -100:.1:100;
% x10 = -100:.1:100;
syms x1 x2 x3 x4 x5 x6 x7 x8 x9 x10
%y = -100:.1:100;
%[x,y] = meshgrid(x,y);
%Num = (((sin (sqrt (x.^2+y.^2) )).^2) - 0.5);
%Den = (1 + 0.001.*(x.^2+y.^2)).^2;

%f = 0.5 - (((sin (sqrt (x.^2+y.^2) )).^2) - 0.5)./(1 + 0.001.*(x.^2+y.^2)).^2;

F1 = (0.5-((((sin (sqrt (x1.^2+x2.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x1.^2+x2.^2)).^2));
F2 = (0.5-((((sin (sqrt (x2.^2+x3.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x2.^2+x3.^2)).^2));
F3 = (0.5-((((sin (sqrt (x3.^2+x4.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x3.^2+x4.^2)).^2));
F4 = (0.5-((((sin (sqrt (x4.^2+x5.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x4.^2+x5.^2)).^2));
F5 = (0.5-((((sin (sqrt (x5.^2+x6.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x5.^2+x6.^2)).^2));
F6 = (0.5-((((sin (sqrt (x6.^2+x7.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x6.^2+x7.^2)).^2));
F7 = (0.5-((((sin (sqrt (x7.^2+x8.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x7.^2+x8.^2)).^2));
F8 = (0.5-((((sin (sqrt (x8.^2+x9.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x8.^2+x9.^2)).^2));
F9 = (0.5-((((sin (sqrt (x9.^2+x10.^2) )).^2) - 0.5)/...
    (1 + 0.001*(x9.^2+x10.^2)).^2));
y = F1+F2+F3+F4+F5+F6+F7+F8+F9

%f = 0.5 - Num./Den;
% m = islocalmin(y)
% n = islocalmin(F1)
% k = islocalmin(F9)

% figure(1)
% hold on
% mesh(x,y,f)
% % scatter3(x(0),y(0),f(m),'*r')
% xlabel('Eixo das Abscissas')
% ylabel('Eixo das Ordenadas')
% legend('Schaffer')
% grid on
% hold off
% 
% figure(2)
% hold on
% x = -100:.1:100;
% 
% f = 0.5 - (((sin (sqrt (x.^2+y.^2) )).^2) - 0.5)./(1 + 0.001.*(x.^2+y.^2)).^2;
% % plot(x,f,'-o','k')
% %scatter3(x(0),y(0),f(m),'*r')
% plot(x,f,'--gs',...
%     'LineWidth',0.2,...
%     'MarkerSize',0.01,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[0.5,0.5,0.5])
% title('Função de Schaffer em 2D')
% xlabel('Eixo das Abscissas')
% ylabel('Eixo das Ordenadas')
% legend('Schaffer')
% grid on
% hold off
