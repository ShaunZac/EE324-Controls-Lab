%% Part a
hold on
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Step Response");
for a=-1:0.01:1
    G = tf([1, 5+a], [1, 11, 30]);
    [y, t] = step(G, 2.5);
    plot(t, y, 'DisplayName', "a="+string(a));
end
hold off
figure
hold on
poles_uncancelled = tf([1, 5], [1, 11, 30]);
poles_cancelled = tf(1, [1, 6]);
step(poles_uncancelled, poles_cancelled);
hold off
legend

%% Part b
unstable = tf(1, [1, -1, 6]);
zero_unstable = tf([1, -3], [1, -1, 6]);
figure
step(unstable, zero_unstable);
xlim([0 10]);
legend

figure
hold on
for a=-0.1:0.02:0.1
    G = tf([1, -3+a], [1, -1, 6]);
    step(G, 10);
end