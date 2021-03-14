G1 = tf(1, [1, 5, 6]);
t = 0:0.01:20;
i = 1;
for f=0.1:0.1:0.5
    u = sin(2*pi*f*t);
    exp_amplitude = abs(evalfr(G1,1i*2*pi*f));
    exp_phase = angle(evalfr(G1,1i*2*pi*f));
    subplot(3,2,i);
    i = i + 1;
    hold on
    lsim(G1, u, t);
    plot(t, exp_amplitude * sin(2*pi*f*t + exp_phase), 'x');
    title("Frequency = " + string(f) + "Hz");
end

figure
G2 = tf(60, [1, 6, 11, 6]);
t = 0:0.01:20;
i = 1;
for f=0.1:0.1:0.5
    u = sin(2*pi*f*t);
    exp_amplitude = abs(evalfr(G2,1i*2*pi*f));
    exp_phase = angle(evalfr(G2,1i*2*pi*f));
    subplot(3,2,i);
    i = i + 1;
    hold on
    lsim(G2, u, t);
    plot(t, exp_amplitude * sin(2*pi*f*t + exp_phase), 'x');
    title("Frequency = " + string(f) + "Hz");
end

figure
bode(G2);
% 180 phase diff at 3.33 rads/s
figure
u = sin(10*t/3);
lsim(G2, u, t);
