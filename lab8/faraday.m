%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265 
function[result]=faraday(xo,yo,to)

%divide x into m steps
m=10000;
dx=2*xo/m;

%initialize dx
%dx=0.001;

%divide y into n steps
n=10000;
dy=2*yo/n;

%dy=0.001;
%hold value of the sum of double integral
dblint=0;
%defintion of double integral, midpoint rule
for y=-yo+(dy/2):dy:yo
    for x=-xo+(dx/2):dx:xo
        dblint=dblint+cos(4*pi*(x+y))*dx*dy; 
    end
end
%experimental value
%derivative using the defintion of derivative
h=0.0000001;
result=-dblint*(sin(8*pi.*(to+h))-sin(8*pi.*to))./h;
%theoretical value
resultreal=-cos(8*pi.*to)*8*pi/(16*pi^2)*(-cos(4*pi*xo+4*pi*yo)+cos(-4*pi*xo+4*pi*yo)+cos(4*pi*xo-4*pi*yo)-cos(-4*pi*xo-4*pi*yo));

%plot experimental
plot(to,result,'r','LineWidth', 2);
hold on;
%plot theoretical
plot(to,resultreal,'b','LineWidth', 2);

%fill the area between the two values to show difference
to2=[to,fliplr(to)];
inBetween=[result,fliplr(resultreal)];
fill(to2,inBetween,'g');
max_amplitude_exp=max(result);
max_amplitude_the=max(resultreal);
legend('Experimental','Theoretical');
ylabel(['Voltage(V)', ' Exp. Amplitude=', num2str(max_amplitude_exp), ' The. Amplitude=', num2str(max_amplitude_the)]);
xlabel('Time(s)');
title(['Voltage vs Time: x=',num2str(xo),' y=',num2str(yo), ' m=' , num2str(m) ,' n=' , num2str(n) ,' dx=' , num2str(dx) , ' dy=' ,num2str(dy)]);
end