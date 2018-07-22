%% Problem 1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Problem 1 Question 1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Path of (0,0,0) to (1,1,1) straight line for pathIntegral with steps of 0.0001 
close all;
clear all;
clc;

x0=0:0.0001:1;
y0=0:0.0001:1;
z0=0:0.0001:1;

p=[x0;y0;z0];
[a]=pathIntegral(p);

%expected answer:<1,1,1>, actual answer<0.9999,0.9999,0.9999>

%% Problem 1 Question 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Path of (0,0,0) to (1,1,1) straight line for pathIntegral with steps of 0.1 
close all;
clear all;
clc;

x0=0:0.1:1;
y0=0:0.1:1;
z0=0:0.1:1;

p=[x0;y0;z0];
[a]=pathIntegral(p);

%expected answer:<1,1,1>, actual answer<0.9033,0.9033,0.9033>

%% Path of (0,0,0) to (1,1,1) straight line for pathIntegral with steps of 0.01 
close all;
clear all;
clc;

x0=0:0.01:1;
y0=0:0.01:1;
z0=0:0.01:1;

p=[x0;y0;z0];
[a]=pathIntegral(p);

%expected answer:<1,1,1>, actual answer<0.9900,0.9900,0.9900>

%% Path of (0,0,0) to (1,1,1) straight line for pathIntegral with steps of 0.001 
close all;
clear all;
clc;

x0=0:0.001:1;
y0=0:0.001:1;
z0=0:0.001:1;

p=[x0;y0;z0];
[a]=pathIntegral(p);

%expected answer:<1,1,1>, actual answer<0.9990,0.9990,0.9990>

%% Problem 1 Question 3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% path of piecewise y=-1 for -2<=x<=0,y=x^3-1 for 0<=x<=1, 0<=y<=2 for x=1 for pathIntegral
close all;
clear all;
clc;

x1=-2:0.0001:0;
x2=0:0.0001:1;
y3=0:0.0001:2;
x3=ones(1,length(y3));
y1=ones(1,length(x1)).*-1;
y2=x2.^3-1;
z1=zeros(1,length(x1));
z2=zeros(1,length(x2));
z3=zeros(1,length(x3));
x0=[x1 x2 x3];
y0=[y1 y2 y3];
z0=[z1 z2 z3];
plot(x0,y0);
p=[x0;y0;z0];

[a]=pathIntegral(p);

%expected answer first part:<14/3(4.667),0,0>, actual:<4.667,0,0>
%expected answer second part:1.3324613(total), actual:<0.9812,0.9258,0> squared sum is 1.34902
%expected answer third part: <0,14/3(4.667),0>, actual:<0,4.667,0>

%% Path of 3/4 of square for pathIntegral
close all;
clear all;
clc;

x1=0:0.01:1;
y1=ones(1,length(x1));
y2=1:-0.01:0;
x2=ones(1,length(y2));
x3=1:-0.01:0;
y3=zeros(1,length(x3));
z1=zeros(1,length(x1));
z2=zeros(1,length(x2));
z3=zeros(1,length(x3));
x0=[x1 x2 x3];
y0=[y1 y2 y3];
z0=[z1 z2 z3];
p=[x0;y0;z0];
plot(x0,y0);

[a]=pathIntegral(p);

%expected answer:<1,-4/3(-1.333),0>, actual answer<1,-1.333,0>

%% Problem 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Problem 2 Question 1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Path of (0,0,0) to (pi/2,pi/2,1) for dotPathIntegral with steps of 0.0001
close all;
clear all;
clc;

x0=0:0.0001:pi/2;
y0=0:0.0001:pi/2;
z0=x0./(pi/2);
p=[x0;y0;z0];

[q]=dotPathIntegral(p);

%expected answer:1/3-1/pi+pi/8(4.078), actual answer: 4.078

%% Problem 2 Question 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Path of (0,0,0) to (pi/2,pi/2,1) for dotPathIntegral with steps of 0.1
close all;
clear all;
clc;

x0=0:0.1:pi/2;
y0=0:0.1:pi/2;
z0=x0./(pi/2);
p=[x0;y0;z0];

[q]=dotPathIntegral(p);

%expected answer:1/3-1/pi+pi/8(4.078), actual answer: 4.808

%% Path of (0,0,0) to (pi/2,pi/2,1) for dotPathIntegral with steps of 0.01
close all;
clear all;
clc;

x0=0:0.01:pi/2;
y0=0:0.01:pi/2;
z0=x0./(pi/2);
p=[x0;y0;z0];

[q]=dotPathIntegral(p);

%expected answer:1/3-1/pi+pi/8(4.078), actual answer: 4.085

%% Path of (0,0,0) to (pi/2,pi/2,1) for dotPathIntegral with steps of 0.001
close all;
clear all;
clc;

x0=0:0.001:pi/2;
y0=0:0.001:pi/2;
z0=x0./(pi/2);
p=[x0;y0;z0];

[q]=dotPathIntegral(p);

%expected answer:1/3-1/pi+pi/8(4.078), actual answer: 4.085

%% Path of (0,0,0) to (pi/2,pi/2,1) for dotPathIntegral with steps of 0.0001
close all;
clear all;
clc;

x0=0:0.0001:pi/2;
y0=0:0.0001:pi/2;
z0=x0./(pi/2);
p=[x0;y0;z0];

[q]=dotPathIntegral(p);

%expected answer:1/3-1/pi+pi/8(4.078), actual answer: 4.078
%% Problem 2 Question 3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% path of piecewise y=-1 for -2<=x<=0,y=x^3-1 for 0<=x<=1, 0<=y<=2 for x=1 for dotPathIntegral
close all;
clear all;
clc;

x1=-2:0.0001:0;
x2=0:0.0001:1;
y3=0:0.0001:2;
x3=ones(1,length(y3));
y1=ones(1,length(x1)).*-1;
y2=x2.^3-1;
z1=zeros(1,length(x1));
z2=zeros(1,length(x2));
z3=zeros(1,length(x3));
x0=[x1 x2 x3];
y0=[y1 y2 y3];
z0=[z1 z2 z3];
p=[x0;y0;z0];
plot(x0,y0);

[q]=dotPathIntegral(p);
%expected answer first part:-1/3+(2/6)cos(-6+6t)=-0.01327, actual:-0.0133
%expected answer second part:-cos(3)/3+cos(0)/3=0.66333 ,actual:0.6633
%expected answer third part:0 , actual:0
%expected answer total: 0.65006, actual:0.65

%% Path of 3/4 of square for dotPathIntegral
close all;
clear all;
clc;

x1=0:0.01:1;
y1=ones(1,length(x1));
y2=1:-0.01:0;
x2=ones(1,length(y2));
x3=1:-0.01:0;
y3=zeros(1,length(x3));
z1=zeros(1,length(x1));
z2=zeros(1,length(x2));
z3=zeros(1,length(x3));
x0=[x1 x2 x3];
y0=[y1 y2 y3];
z0=[z1 z2 z3];
p=[x2;y2;z2];
plot(x0,y0);

[q]=dotPathIntegral(p);
%expected answer:0.6633+0-0.6633=0, actual answer:0