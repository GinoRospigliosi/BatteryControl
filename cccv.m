function I = cccv(x, Imax, Vmax)
ESR=.1;
OCV=(2.6+2.35*x-3.75*x^2+2.5*x^3);
VCC=OCV+ESR*Imax;

if (VCC<=Vmax)
    I=Imax;
else
    I=(1/ESR)*(Vmax-OCV);
end

end
