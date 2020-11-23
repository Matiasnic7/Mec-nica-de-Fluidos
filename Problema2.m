clc;clear all;
%Parte A
j=[0.025:0.0001:0.026];
DI=0.66*(1e-32*(j.^4.75)+8.3e-31*(j.^3.2)).^0.04;
plot(j,DI);
grid;
%%%
g=9.81;
D=0.0221;
h=10.4;
L=7;
A=sqrt((g*D*h)/L);
%-------------
B=log10(1.80e-5+3.4e-4);
%Valor del caudal PARTE B
Q=-2.22*(D^2)*A*B;
%Valor caudal PARTE C
h1=44.54;
F=sqrt((g*D*h1)/L);
G=log10(1.80e-5+1.7e-4);
Q2=-2.22*(D^2)*F*G;



