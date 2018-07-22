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

