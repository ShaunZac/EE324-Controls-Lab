%% Part a
G_info_damping = struct(stepinfo(tf(1, [1, 1])));
i = 1;
hold on
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Step Response");
for d=[0, 0.5, 2]
    G = tf(1, [1, 2*d, 1]);
    [y, t] = step(G, 60);
    plot(t, y, 'DisplayName', "\zeta="+string(d));
    G_info_damping(i) = stepinfo(G);
    i = i + 1;
end
legend
G_info_damping = struct2table(G_info_damping);
G_info_damping(:, ["Overshoot", "RiseTime", "SettlingTime", "PeakTime"])

%% Part b
G_info_freq = struct(stepinfo(tf(1, [1, 1])));
i = 1;
figure
hold on
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Step Response");
for w=1:2:9
    G = tf(w^2, [1, 0.4*w, w^2]);
    [y, t] = step(G, 30);
    plot(t, y, 'DisplayName', "\omega="+string(w));
    G_info_freq(i) = stepinfo(G);
    i = i + 1;
end
legend
G_info_freq = struct2table(G_info_freq);
G_info_freq(:, ["Overshoot", "RiseTime", "SettlingTime", "PeakTime"])