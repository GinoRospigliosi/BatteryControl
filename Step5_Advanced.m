%Step 5

%Time
t=0:dt:3600;
%Input Intercalation Current Density / Total Ionic Flux 
u=zeros(length(t));
%State of Charge/Concentration
z1=zeros(length(t));
z2=zeros(length(t));
z3=zeros(length(t));
%Equilibrium Potential 
Eq_c(i) = zeros(length(t));
Eq_a(i) = zeros(length(t));
%Surface Concentration
y=zeros(length(t));
%Diffusivity
D = 1;
% Spherical Particle Radius
R = 1;
% Second Order Transfer Function State Space Coefficients
a_c = 3*D/R;
b_c = 2*R/7;
c_c = (R^2)/(35*D);
a_a = 3*D/R;
b_a = 2*R/7;
c_a = (R^2)/(35*D);
alpha_c=(b_c-c_c*a_c)/c
% Resisitance
R_a = 1;
R_c = 1;
R_sol = 1; 
Rtot = R_a + R_c + R_sol

dC_dR = 1*R
u = 4*pi*R^2*D*dC_dR


cs_iniital = 0;
z_0 = 0;

    for i=2:length(t)
        u(i)
        z1(i)=z1(i-1)*+a_c*(u(i));
        z2(i)=u(i-1)-z2(i)/(c_a);
        z3(i)=-u(i-1)-z3(i)/(c_c);
        Eq_c(i) = alpha_c*z1(i) + cs_initital - (a_c/a_a)*(z1(i)-z_0);
        Eq_a(i) = alpha_a*z2(i)+z1(i);
        y(i)=Rtot*u(i)+ ((2.6+2.35*Eq_c(i)-3.75*Eq_c(i)^2+2.5*Eq_c(i)^3))-(2.6+2.35*Eq_a(i)-3.75*Eq_a(i)^2+2.5*Eq_a(i)^3);
    end

