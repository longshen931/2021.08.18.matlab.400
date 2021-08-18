N=20;
z=0;
for i=1:N
    m=exp(i)*sin(1+i^2)*cos(1-i^3);
    z=z+m;
end