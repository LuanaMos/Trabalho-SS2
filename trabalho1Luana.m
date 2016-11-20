clc; 
clear all;
close all;
Fs = 5; %taxa de amostragem
Fs1 = Fs; %taxa de amostragem 1
Fs2 = 10; %taxa de amostragem 2
Fs3 = 30; %taxa de amostragem 3

Ts = 1/Fs; %periodo de amostragem
t = 0:0.005:1; %tempo para simulação

n1 = 0:Fs1; %numero de amostras 1
n2 = 0:Fs2; %numero de amostras 2
n3 = 0:Fs3; %numero de amostras 3
for i = 1:10
figure();
f = 1/(i*Ts); %frequencia do senoide
sen  = sin(2*pi*t*f); %senoide
sen1am  = sin(2*pi*(f/Fs1)*n1); %senoide amostrada em Fs1
sen2am  = sin(2*pi*(f/Fs2)*n2); %senoide amostrada em Fs1
sen3am  = sin(2*pi*(f/Fs3)*n3); %senoide amostrada em Fs1

s = num2str(f);
subplot(3,3,1);plot(t,sen);hold on; title(['sinal original fom F=' s 'Hz']);
subplot(3,3,2);plot(t,sen);hold on;stem(n1/Fs1,sen1am);title('sinal amostrado com Fs1 = 5');
subplot(3,3,3);plot(t,sen);hold on;stem(n2/Fs2,sen2am);title('sinal amostrado com Fs2 = 10');    2 subplot(3,3,4);plot(t,sen);hold on;stem(n3/Fs3,sen3am);title('sinal amostrado com Fs3 = 30');

subplot(3,3,5);plot(n1/Fs1,sen1am);xlim([0 1]);ylim([-1,1]);title('sinal recuperado com Fs1');
subplot(3,3,6);plot(n2/Fs2,sen2am);xlim([0 1]);ylim([-1 1]);title('sinal recuperado com Fs2');
subplot(3,3,7);plot(n3/Fs3,sen3am);xlim([0 1]);ylim([-1 1]);title('sinal recuperado com Fs3');
end
