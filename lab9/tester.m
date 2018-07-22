%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265
%% Test 1:(cos(x)+sin(x))*(cos(c*t)+sin(c*t))
%WARNING pause debugging after seeing plots
clc;
clear all;
close all;
x=0:0.001:2*pi;
t=0:0.0000000001:0.0000001;
c=3e8;
u=zeros(length(t),length(x));
%(cos(x)+sin(x))*(cos(c*t)+sin(c*t))
for to=1:length(t)
    for xo=1:length(x)
        u(to,xo)=(cos(x(xo))+sin(x(xo)))*(cos(c*t(to))+sin(c*t(to)));
    end
end

utplt=wave_equation(u,t,x);

% plot u in future,present and past varying in time
%WARNING pause debugging after seeing plots
hold on;
axis([x(1) x(end) min(utplt(:)) max(utplt(:))]);
ylabel('Amplitude');
xlabel('x: Green=u(t-dt,x),Red=u(t,x),Blue=u(t+dt,x)');
for to=2:length(t)
    %withold endpoints of x
    uatto=u(to,2:end-1);
    uattodt=utplt(to,2:end-1);
    uattminus=u(to-1,2:end-1);
    title(['(cos(x)+sin(x))*(cos(c*t)+sin(c*t)) at Time=',num2str(t(to))]);
    p1=plot(x(2:end-1),uatto,'r','LineWidth', 2);
    p2=plot(x(2:end-1),uattminus,'g','LineWidth', 2);
    p3=plot(x(2:end-1),uattodt,'b','LineWidth', 2);
    pause(0.0001);
    delete(p1);
    delete(p2);
    delete(p3);
end

%% Test 2: e^(x+ct)
%WARNING pause debugging after seeing plots
clc;
clear all;
close all;
x=0:0.001:2*pi;
t=0:0.0000000001:0.0000001;
c=3e8;
u=zeros(length(t),length(x));
for to=1:length(t)
    for xo=1:length(x)
        u(to,xo)=exp(x(xo)+c*t(to));
    end
end

utplt=wave_equation(u,t,x);

% plot u in future,present and past varying in time
%WARNING pause debugging after seeing plots
hold on;
axis([x(1) x(end) min(utplt(:)) max(utplt(:))]);
ylabel('Amplitude');
xlabel('x: Green=u(t-dt,x),Red=u(t,x),Blue=u(t+dt,x)');
for to=850:length(t)
    %withold endpoints of x
    uatto=u(to,2:end-1);
    uattodt=utplt(to,2:end-1);
    uattminus=u(to-1,2:end-1);
    title(['exp(x+ct) at Time=',num2str(t(to))]);
    p1=plot(x(2:end-1),uatto,'r','LineWidth', 2);
    p2=plot(x(2:end-1),uattminus,'g','LineWidth', 2);
    p3=plot(x(2:end-1),uattodt,'b','LineWidth', 2);
    pause(0.01);
    delete(p1);
    delete(p2);
    delete(p3);
end