clear;clc;
%Q6 A
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 0;
fs=1/tr;
t= -10*tb:tr:10*tb;
tmax = 10*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=0 and Tmax=10Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 B
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 0.5;
fs=1/tr;
t= -10*tb:tr:10*tb;
tmax = 10*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=0.5 and Tmax=10Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 C
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 1;
fs=1/tr;
t= -10*tb:tr:10*tb;
tmax = 10*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=1 and Tmax=10Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;


%Q6 D
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 0;
fs=1/tr;
t= -3*tb:tr:3*tb;
tmax = 3*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=0 and Tmax=3Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 E
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 0.5;
fs=1/tr;
t= -3*tb:tr:3*tb;
tmax = 3*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=0.5 and Tmax=3Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 F
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
alpha = 1;
fs=1/tr;
t= -3*tb:tr:3*tb;
tmax = 3*tb;
pt=(sinc(Rb*t).*cos(pi*alpha*Rb*t))./(1-4*alpha^2*Rb^2*t.^2);
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for raised cosine pulse shaping with alpha=1 and Tmax=3Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 G
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
fs=1/tr;
t= -10*tb:tr:10*tb;
tmax = 10*tb;
pt=sinc(Rb*t).^2;
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for sinc^2  pulse shaping with Tmax=10Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;

%Q6 H
clear;
tr = 0.001
Rb = 100;
tb=1/Rb;
fs=1/tr;
t= -3*tb:tr:3*tb;
tmax = 3*tb;
pt=sinc(Rb*t).^2;
%------------------------------------------------------
figure;
subplot(211);
plot(t,pt);
sgtitle("p(t) & P(f) for sinc^2  pulse shaping with Tmax=3Tb");
ylabel("p(t)");
xlabel("t(sec)");
grid on;

N=length(pt);
pf=abs(fftshift(fft(pt,N)));
f=fs*[-N/2:N/2-1]/N;
subplot(212);
plot(f,pf);
xlabel("f(Hz)");
ylabel("P(f)");
grid on;