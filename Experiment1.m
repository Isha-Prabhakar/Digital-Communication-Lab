clear;
clc;
%Q1 Generating the signal
tr=0.001;
Ts=0.01;
delta=0.1;
t=0:Ts:2;
xt=sin(2*pi*t)-cos(4*pi*t);
%Q2 and Q3
%Delta Modulation
for n=1:length(xt)
    if n==1
        e(n)=xt(n);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n);
    else
        e(n)=xt(n)-xq(n-1);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n)+xq(n-1);
    end
end
figure;
plot(t,xt,'b');
hold on;
stairs(t,xq,'red');
title("Message signal & Delta Modulated Signal(with Ts = 0.01 sec and delta = 0.1)");
xlabel("Time");
ylabel("Amplitude");
hold off;


%Q4 a) Delta Modulation with Ts = 0.01 sec and delta = 0.2
Ts=0.01;
delta=0.2;
t=0:Ts:2;
xt=sin(2*pi*t)-cos(4*pi*t);
for n=1:length(xt)
    if n==1
        e(n)=xt(n);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n);
    else
        e(n)=xt(n)-xq(n-1);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n)+xq(n-1);
    end
end
figure;
plot(t,xt,'b');
hold on;
stairs(t,xq,'red');
title("Message signal & Delta Modulated Signal(with Ts = 0.01 sec and delta = 0.2)");
xlabel("Time");
ylabel("Amplitude");
ylim([-2 2.5])
hold off;

clear;
%Q4 b) Delta Modulation with Ts = 0.02 sec and delta = 0.3
Ts2=0.02;
delta=0.3;
t=0:Ts2:2;
xt=sin(2*pi*t)-cos(4*pi*t);
for n=1:length(xt)
    if n==1
        e(n)=xt(n);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n);
    else
        e(n)=xt(n)-xq(n-1);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n)+xq(n-1);
    end
end
figure;
plot(t,xt,'b');
hold on;
stairs(t,xq,'red');
title("Message signal & Delta Modulated Signal(with Ts = 0.02 sec and delta = 0.3)");
xlabel("Time");
ylabel("Amplitude");
hold off;

%Q4 c) Delta Modulation with Ts = 0.02 sec and delta = 0.5
Ts2=0.02;
delta=0.5;
t=0:Ts2:2;
xt=sin(2*pi*t)-cos(4*pi*t);
for n=1:length(xt)
    if n==1
        e(n)=xt(n);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n);
    else
        e(n)=xt(n)-xq(n-1);
        eq(n)=delta*sign(e(n));
        xq(n)=eq(n)+xq(n-1);
    end
end
figure;
plot(t,xt,'b');
hold on;
stairs(t,xq,'red');
title("Message signal & Delta Modulated Signal(with Ts = 0.02 sec and delta = 0.5)");
xlabel("Time");
ylabel("Amplitude");
ylim([-2 2.5])
hold off;