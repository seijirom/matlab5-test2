
%
N=10;
Ts=1;
Cin= 1e-12; Co= 1e-12; Cda= 1e-12;
A =10000;
alfa = Cin/(Co+(Co+Cin)/A);
beta = Cda/(Co+(Co+Cin)/A);
delta = Cin/(Co+(Co+Cin)/A);
gamma = 1/(1+Cin/((A+1)*Co));
VinHi = 2; SR = 10; GBW = 1; 
sim('cell1')
figure(1)
stairs(1:N,Vin(1:N),'b'); hold on; stairs(1:N,Vout(1:N),'r');axis([0 N 0 N]);

 windowBM=blackman(N);
 %voutfft=fft(vout)/(N/2);  % window ????
 voutfft=fft(vout.*windowBM)/(N/2);
 voutfftdB=20*log10(abs(voutfft));
 xx=linspace(0,1,N);
 figure(2)
 plot(xx,voutfftdB,'b-');
 figure(3)
 semilogx(xx,voutfftdB,'b-') % semilog plot
 axis([0.001 0.5 -100 0]);
 
