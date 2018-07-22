%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265 
%% 
%x=1, and y=1
clc;
clear all;
close all;
xo=1;
yo=1;
to=0:0.0001:1;
result=faraday(xo,yo,to);
%theoretically should be 0 since x, and y are multiple of 0.25 causing function to go to 0, but experimentally found to be a really small
%number
%%
%Using random x, and y value
clc;
clear all;
close all;
xo=1.21;
yo=1.28;
to=0:0.0001:1;
result=faraday(xo,yo,to);
%%
%Using x=0.125, and y=0.125 to get maximum amplitude. values for x and y
%found below
clc;
clear all;
close all;
xo=0.125;
yo=0.125;
to=0:0.0001:1;
result=faraday(xo,yo,to);
%%
%Using x=0.125, and y=0.375 to get maximum amplitude. values for x and y
%found below
clc;
clear all;
close all;
xo=0.125;
yo=0.375;
to=0:0.0001:1;
result=faraday(xo,yo,to);


%% 
%finding x, and y values, to get maximum amplitude using theoretical
%function
clc;
clear all;
close all;
max_amp=0;
max_x=0;
max_y=0;
to=0:0.001:1;

for xo=0:0.001:1
    for yo=0:0.001:1
        resultreal=-cos(8*pi.*to)*8*pi/(16*pi^2)*(-cos(4*pi*xo+4*pi*yo)+cos(-4*pi*xo+4*pi*yo)+cos(4*pi*xo-4*pi*yo)-cos(-4*pi*xo-4*pi*yo));
        if max(resultreal)>max_amp
            max_amp=max(resultreal);
            max_x=xo;
            max_y=yo;
        end
        
    end

end
%max amplitude is 0.6366 when x=0.125+0.5n, and y=0.125+0.5n