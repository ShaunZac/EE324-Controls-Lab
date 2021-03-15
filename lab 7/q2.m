G = tf(1, [1, 3, 2]);
os = 10;
d = sqrt(log(os/100)^2/(pi^2 + log(os/100)^2));
rlocus(G);
ylim([-6, 6]);
sgrid(d, 4);

%% Part b
k = 4.45;
sse_old = 1/(1 + k*dcgain(G));
C = tf([1, 0.001], [1, 0.001/20]);
sse_new = 1/(1 + k*dcgain(C*G));

%% Part c
figure;
hold on;
z_range = [0.001, 0.01, 0.1, 0.5, 1];
overshoots = [];
i = 1;
for z=z_range
    C = tf([1, z], [1, z/20]);
    sys_c = feedback(k*G*C, 1);
    step(sys_c);
    info_c = stepinfo(sys_c);
    overshoots(i) = info_c.Overshoot;
    i = i + 1;
    step(sys_c)
end
legend("z = " + string(z_range));