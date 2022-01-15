function I = cccvRC(x, x2, x3, Imax, Vmax)
ESR=.1;
C1=600;
C2=10;
R1=0.01;
R2=0.01;
OCV=2.6+2.35*x-3.75*x^2+2.5*x^3;
VCC=(OCV)+ESR*Imax+(1/C1)*x2+(1/C2)*x3;

if (VCC<=Vmax)
    I=Imax;
else
    I=((Vmax-OCV)/(ESR+R1+R2));
end

end
