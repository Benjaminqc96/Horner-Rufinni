clear
close all
clc
syms x
fu=input('Ingrese una funcion: ');
solu=solve(fu,x);
fprintf('Existen %d soluciones: \n',length(solu))

for k=1:length(solu)
fprintf('%d: %f \n',k,solu(k))
end
xo=input('Ingrese un valor inicial: ');
z=-30:.01:30;
ejez=subs(fu,z);
plot(z,ejez)
grid on
hold on
q=horn(fu, xo);
r=newhor(fu,xo);



