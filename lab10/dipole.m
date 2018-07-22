%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265
function[field]=dipole(I,omega,r,theta,phi,he)
f=omega/2*pi;
c=3e8;
lambda=c/f;
l=lambda/50;
k=2*pi/lambda;

E=(1i*k*I*l*120*pi)/(4*pi)*(exp(-1i*k*r)/r)*sin(theta);

H=E/120*pi;

if(he=='h')
    field=abs(E);
end
if(he=='e')
    field=abs(H);
end
end

