function I = cccv2(x, x1, x2, Imax, Vmax, G)
ESR=.1;
C1=600;
C2=10;
OCV=(2.6+G*x);
VCC=OCV+ESR*Imax+(1/C1)*x1+(1/C2)*x2;

if (VCC<=Vmax)
    I=Imax;
else
    I=(1/ESR)*(Vmax-OCV);
end

end
