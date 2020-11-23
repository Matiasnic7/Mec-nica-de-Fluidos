clc;clear all;
%Valores de f para tuberias de 3 pulg y 6 pulg respectivamente, value1 y
%value2, calculadas con la funcion de Colebrook.
%Tuberia 3 pulg
Ro1=1.42e-3;
Re1=346000;
Value1=colebrook(Re1,Ro1);
%Tuberia 6 pulgadas
Ro2=7.7e-4;
Re2=187000;
Value2=colebrook(Re2,Ro2);
fprintf(1,'Valores f para tuberías: \n Tubería 3 pulg f = %f \n Tubería 6 pulg f = %f ',Value1,Value2)
