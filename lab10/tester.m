clc;
clear all;
close all;
I=20;
omega=2*pi;
r=1000;
theta=pi/2;
phi=0;

e_field=dipole(I,omega,r,theta,phi,'e');
h_field=dipole(I,omega,r,theta,phi,'h');
hold on;
title('Electric Field vs Phi');
for phiz=0:0.01:2*pi
    plot(phiz,dipole(20,2*pi,1000,pi/2,phiz,'h'),'ro');
end
hold off;
figure;
hold on;
title('Electric Field vs Theta');
for thetaz=0:0.01:pi;
    plot(thetaz,dipole(20,2*pi,1000,thetaz,0,'h'),'bo');
end
hold off;
%% 
clc;
clear all;
close all;
locations=[0;0;0];
I=20;
omega=2*pi;
r=1000;
theta=pi/2;
phi=0;

field=array(locations,20,2*pi,1000,pi/2,0,'h');

