G = tf(1, [1, 3, 5, 0]);
rlocus(G);
rise_times = [0, 0];
i = 1;
kp_range = 0.01:0.01:20;
for kp=kp_range
    series_G = series(G, kp);
    net_G = feedback(series_G, 1);
    info = stepinfo(net_G);
    rise_times(i) = info.RiseTime;
    i = i + 1;
end
figure
plot(kp_range, rise_times);
title("Rise Time vs K_p");
xlabel("K_p");
ylabel("Rise Time (s)");
min(kp_range(rise_times < 1.5))
min(rise_times)