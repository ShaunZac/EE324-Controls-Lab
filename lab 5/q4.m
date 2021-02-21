G = tf(0.11*[1, 0.6], [6, 3.6127, 0.0572]);
rlocus(G);
kp = (100-dcgain(G))/(dcgain(G)^2);
series_G = series(G, kp);
net_G = feedback(series_G, 1);
figure
step(net_G);
rise_times = [0, 0];
kp_range = -0.01:-0.01:-2;
i = 1;
for kp=kp_range
    series_G = series(G, kp);
    net_G = feedback(series_G, 1);
    info = stepinfo(net_G);
    rise_times(i) = info.RiseTime;
    i = i + 1;
end
max(kp_range(isnan(rise_times)))
