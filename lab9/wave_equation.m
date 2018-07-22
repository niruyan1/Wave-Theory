%% Niruyan Rakulan 214343438, Zhiwei Chen  212654265
function[utplust]=wave_equation(u,t,x)
delta_t=0;
delta_x=0;
c_squared=3e8^2;
%holds values of the double partial derivative with x for different t
double_partial_with_x_for_different_t=zeros(length(t),length(x));
%holds values of u(t+deltaT) for different x
utplust=zeros(length(t),length(x));
%compute double partial with x
for to=1:length(t)
    for xo=2:length(x)-1
        delta_x=x(xo+1)-x(xo);
        double_partial_with_x=(u(to,xo+1)-2*u(to,xo)+u(to,xo-1))/(delta_x^2);
        double_partial_with_x_for_different_t(to,xo)=double_partial_with_x;
    end
end
%find u(t+dt,x)
for xo=2:length(x)-1
    for to=2:length(t)
        delta_t=t(to)-t(to-1);
        utplust_for_cur_x=double_partial_with_x_for_different_t(to,xo)*c_squared*delta_t^2-u(to-1,xo)+2*u(to,xo);
        utplust(to,xo)=utplust_for_cur_x;
    end
end

end