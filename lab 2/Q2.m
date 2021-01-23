d = 0.1;
G = tf(1, [1, 2*d, 1]);
step(G);

overshoot = [];
rise = [];
settling = [];
peak = [];

figure
hold on
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Step Response");
for d=0:0.25:2
    G = tf(1, [1, 2*d, 1]);
    [y, t] = step(G, 60);
    plot(t, y, 'DisplayName', "d="+string(d));
    info = stepinfo(G);
    overshoot = [overshoot info.Overshoot];
    rise = [rise info.RiseTime];
    settling = [settling info.SettlingTime];
    peak = [peak info.PeakTime];
end
legend
hold off

figure
plot(0:0.25:2, overshoot)
xlabel("Damping Ratio");
ylabel("Percentage Overshoot");
title("Overshoot vs Damping Ratio");

figure
plot(0:0.25:2, rise)
xlabel("Damping Ratio");
ylabel("Rise Time");
title("Rise Time vs Damping Ratio");

figure
plot(0:0.25:2, settling)
xlabel("Damping Ratio");
ylabel("Percentage Settling Time");
title("Settling Time vs Damping Ratio");

figure
plot(0:0.25:2, peak)
xlabel("Damping Ratio");
ylabel("Percentage Peak Time");
title("Peak Time vs Damping Ratio");