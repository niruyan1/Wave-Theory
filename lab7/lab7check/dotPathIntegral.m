function [result] =dotPathIntegral(P)
%3d path, 3*n array of points
%x,y,z
x = P(1,1:end);
y = P(2,1:end);
z = P(3,1:end);
%difference between a point and the next of it
dx = x(2:end) - x(1:end-1);
dy = y(2:end) - y(1:end-1);
dz = z(2:end) - z(1:end-1);
%function S
S1 = sin(3.*x);
S2 = z.*cos(2.*y);
S3 = x.*(z.^2);
%x,y,z summuation of product invididually
X = sum(S1(1:end-1).*dx);
Y = sum(S2(1:end-1).*dy);
Z = sum(S3(1:end-1).*dz);
result = X + Y +Z;
display(result);
end



%{
%if allowed to use integral function
%% Niruyan Rakulan 214343438
%Returns integral of dot product
function [ A ] = dotPathIntegral(p)

%get the number of rows(3), and columns in the matrix
[rows,columns]=size(p);

%initialize count variable that will hold value of the current column
count=1;

%the output, and it is updated for each integral calculated
q=0;

%loop will go through each column in the matrix
while (count+1)<=columns
   
    %{
    %integrand that has been parameterized
    fun=@(t)(sin(3.*(p(1,count)-p(1,count).*t+p(1,count+1).*t)).*(-p(1,count)+p(1,count+1))      +        (p(3,count)-p(3,count).*t+p(3,count+1).*t).*cos(2.*(p(2,count)-p(2,count).*t+p(2,count+1).*t)).*(-p(2,count)+p(2,count+1))             +         (p(1,count)-p(1,count).*t+p(1,count+1).*t).* ((p(3,count)-p(3,count).*t+p(3,count+1).*t).^2).*(-p(3,count)+p(3,count+1)));     
    %accumulate the intral for each point
    q=q+integral(fun,0,1);
    %next columns
    count=count+1;
    %}
end
A=q;

end



%}