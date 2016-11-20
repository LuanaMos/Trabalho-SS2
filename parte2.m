syms n z
f = n^2-3; %digite a função f(n) aqui
F = ztrans(f) %calcula a transformada z
[num,den] = numden(F); %extrai o denominador e o numerador 
b = sym2poly(num); %transforma o numerador em um vetor de coeficientes
a = sym2poly(den); %transforma o denominador em um vetor de coeficentes
x = [0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]; %entrada degrau
y = filter(b,a,x); %calcula a resposta ao degrau
plot(y); %plota o resultado