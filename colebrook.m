function F = colebrook(R,K)
if any(R(:)<2300) == 1, 
   warning('Ecuación de Colebrook válida para Reynolds >= 2300.');      
end,
if nargin == 1 || isempty(K) == 1,      
   K = 0;
end,
if any(K(:)<0) == 1, 
   warning('El valor de K debe ser no negativo'); 
end,

% Inicial
X1 = K .* R * 0.123968186335417556;              % X1 <- K * R * log(10) / 18.574.
X2 = log(R) - 0.779397488455682028;              % X2 <- log( R * log(10) / 5.02 );                   

% Primera prueba                                              
F = X2 - 0.2;     

% Primera iteración
E = ( log(X1+F) - 0.2 ) ./ ( 1 + X1 + F );
F = F - (1+X1+F+0.5*E) .* E .*(X1+F) ./ (1+X1+F+E.*(1+E/3));

% Segunda iteración
E = ( log(X1+F) + F - X2 ) ./ ( 1 + X1 + F );
F = F - (1+X1+F+0.5*E) .* E .*(X1+F) ./ (1+X1+F+E.*(1+E/3));

% Sol final
F = 1.151292546497022842 ./ F;                  
F = F .* F;                                      
