clc;
clearvars; 

N=500;         % Discrete points
be=1:2:15;     % Binding enegy variation for other states
v=zeros(size(be)); % Velocity array

for z=1:size(be,2)
physical_prop
potential_Empty
z
end


figure(1);   plot(v/1e-9); ylabel('Speed (nm/s)');  xlabel('Binding Free Energy (*k_{b}T )');
set(gca,'FontName','SansSerif'); set(gca,'FontSize',18); set(findall(gca, 'Type', 'Line'),'LineWidth',2);
lgd=legend(sprintfc('%d K_{b}T', be'),'Location','bestoutside');
title(lgd,{'Other states';'Binding free energy'; })
% figure(2);   hold on; u=dx/2:dx:l-dx/2;  plot(u,V_dash(1,:)/kT); plot(u,V_dash(2,:)/kT); plot(u,V_dash(3,:)/kT); plot(u,V_dash(4,:)/kT);
%               xlabel('Position on microtubule (m)'); ylabel('Potential (kT * Joules)');