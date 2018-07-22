%% Niruyan Rakulan 214343438
%Returns x,y, and z omponent of integral
function [ vectorz ] =  pathIntegral(p)

%get the number of rows(3), and columns in the matrix
[rows,columns]=size(p);

%initialize count variable that will hold value of the current column
count=1;

%variables are the summation of integral with respect to x,y, and z
%respectively
xtotal=0;
ytotal=0;
ztotal=0;

%initialize the variables with the coordinates of the first point in the
%matrix
curx=p(1,count);
cury=p(2,count);
curz=p(3,count);

%the integrand
fun=@(x,y,z)x.^2+y.^2+z.^2;

%loop will go through each column in the matrix
while (count+1)<=columns
    
    %integral between two points with respect to x is summed to total
    xtotal=xtotal+integral(@(x)fun(x,cury,curz),p(1,count),p(1,count+1));
    
    %integral between two points with respect to y is summed to total
    ytotal=ytotal+integral(@(y)fun(curx,y,curz),p(2,count),p(2,count+1));
    
    %integral between two points with respect to z is summed to total
    ztotal=ztotal+integral(@(z)fun(curx,cury,z),p(3,count),p(3,count+1));
    
    %go to the next point in the matrix
    curx=p(1,count+1);
    cury=p(2,count+1);
    curz=p(3,count+1);
    
    %go to the next column in matrix
    count=count+1;
end
vectorz=[xtotal,ytotal,ztotal];

end