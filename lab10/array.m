%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265
function[field]=array(locations,I,omega,r,theta,phi,he)
%get the number of dipoles(stored in columns)
[rows,columns]=size(locations);
%sum of field in x direction
field_in_x=0;
%sum of field in y direction
field_in_y=0;
%sum of field in z direction
field_in_z=0;

%x2,y2,z2 is cartesian coordiantes of the point
[x2,y2,z2]=sph2cart(phi,pi/2-theta,r);
%{
x2=r*sin(theta)*cos(phi);
y2=r*sin(theta)*sin(phi);
z2=r*cos(theta);
%}

for count=1:columns
%x1,y1,z1 is cartesian coordiantes of the dipole
[x1,y1,z1]=sph2cart(locations(3,count),pi/2-locations(2,count),locations(1,count));
%{
x1=locations(1,count)*sin(locations(2,count))*cos(locations(3,count));
y1=locations(1,count)*sin(locations(2,count))*sin(locations(3,count));
z1=locations(1,count)*cos(locations(2,count));
z2=r*cos(theta);
%}

%R, theta, and phi, wiht reference point at the dipole
[new_phi,new_theta,new_R]=cart2sph(x2-x1,y2-y1,z2-z1);
%MATLAB measures elevation from x-y plane, instead of z
new_theta=pi/2-new_theta;

field_for_location=dipole(I,omega,new_R,new_theta,new_phi,he);

%split field into x,y,and z components, and addseparetly
field_in_x=field_in_x+field_for_location*sin(new_theta)*cos(new_phi);
field_in_y=field_in_y+field_for_location*sin(new_theta)*sin(new_phi);
field_in_z=field_in_z+field_for_location*cos(new_theta);
end
%sum all the components of the field
field=sqrt(field_in_x^2+field_in_y^2+field_in_z^2);


end